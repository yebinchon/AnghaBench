
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {scalar_t__ revision; } ;
struct et131x_adapter {struct pci_dev* pdev; } ;


 int EXTRACT_CONTROL_REG (int) ;
 int EXTRACT_STATUS_REGISTER (int) ;
 int FAILURE ;
 int LBCIF_ADDRESS_REGISTER_OFFSET ;
 int LBCIF_CONTROL_I2C_WRITE ;
 int LBCIF_CONTROL_LBCIF_ENABLE ;
 int LBCIF_CONTROL_REGISTER_OFFSET ;
 int LBCIF_DATA_REGISTER_OFFSET ;
 int LBCIF_DWORD1_GROUP_OFFSET ;
 int LBCIF_STATUS_ACK_ERROR ;
 int LBCIF_STATUS_GENERAL_ERROR ;
 int LBCIF_STATUS_I2C_IDLE ;
 int LBCIF_STATUS_PHY_QUEUE_AVAIL ;
 int MAX_NUM_REGISTER_POLLS ;
 int MAX_NUM_WRITE_RETRIES ;
 int SUCCESS ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int ,int*) ;
 scalar_t__ pci_write_config_byte (struct pci_dev*,int ,int) ;
 scalar_t__ pci_write_config_dword (struct pci_dev*,int ,int) ;
 int udelay (int) ;

int EepromWriteByte(struct et131x_adapter *etdev, u32 addr, u8 data)
{
 struct pci_dev *pdev = etdev->pdev;
 int index;
 int retries;
 int err = 0;
 int i2c_wack = 0;
 int writeok = 0;
 u8 control;
 u8 status = 0;
 u32 dword1 = 0;
 u32 val = 0;
 for (index = 0; index < MAX_NUM_REGISTER_POLLS; index++) {

  if (pci_read_config_dword(pdev, LBCIF_DWORD1_GROUP_OFFSET,
       &dword1)) {
   err = 1;
   break;
  }

  status = EXTRACT_STATUS_REGISTER(dword1);

  if (status & LBCIF_STATUS_PHY_QUEUE_AVAIL &&
   status & LBCIF_STATUS_I2C_IDLE)

   break;
 }

 if (err || (index >= MAX_NUM_REGISTER_POLLS))
  return FAILURE;


 control = 0;
 control |= LBCIF_CONTROL_LBCIF_ENABLE | LBCIF_CONTROL_I2C_WRITE;

 if (pci_write_config_byte(pdev, LBCIF_CONTROL_REGISTER_OFFSET,
      control)) {
  return FAILURE;
 }

 i2c_wack = 1;



 for (retries = 0; retries < MAX_NUM_WRITE_RETRIES; retries++) {

  if (pci_write_config_dword(pdev, LBCIF_ADDRESS_REGISTER_OFFSET,
        addr)) {
   break;
  }


  if (pci_write_config_byte(pdev, LBCIF_DATA_REGISTER_OFFSET,
       data)) {
   break;
  }


  for (index = 0; index < MAX_NUM_REGISTER_POLLS; index++) {

   if (pci_read_config_dword(pdev,
        LBCIF_DWORD1_GROUP_OFFSET,
        &dword1)) {
    err = 1;
    break;
   }

   status = EXTRACT_STATUS_REGISTER(dword1);

   if (status & LBCIF_STATUS_PHY_QUEUE_AVAIL &&
    status & LBCIF_STATUS_I2C_IDLE) {

    break;
   }
  }

  if (err || (index >= MAX_NUM_REGISTER_POLLS))
   break;





  if (status & LBCIF_STATUS_GENERAL_ERROR
      && etdev->pdev->revision == 0) {
   break;
  }


  if (status & LBCIF_STATUS_ACK_ERROR) {






   udelay(10);
   continue;
  }

  writeok = 1;
  break;
 }


 udelay(10);
 index = 0;
 while (i2c_wack) {
  control &= ~LBCIF_CONTROL_I2C_WRITE;

  if (pci_write_config_byte(pdev, LBCIF_CONTROL_REGISTER_OFFSET,
       control)) {
   writeok = 0;
  }




  do {
   pci_write_config_dword(pdev,
            LBCIF_ADDRESS_REGISTER_OFFSET,
            addr);
   do {
    pci_read_config_dword(pdev,
     LBCIF_DATA_REGISTER_OFFSET, &val);
   } while ((val & 0x00010000) == 0);
  } while (val & 0x00040000);

  control = EXTRACT_CONTROL_REG(val);

  if (control != 0xC0 || index == 10000)
   break;

  index++;
 }

 return writeok ? SUCCESS : FAILURE;
}
