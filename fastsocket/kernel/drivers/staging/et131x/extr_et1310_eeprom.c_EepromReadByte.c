
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct et131x_adapter {struct pci_dev* pdev; } ;


 int EXTRACT_DATA_REGISTER (int ) ;
 int EXTRACT_STATUS_REGISTER (int ) ;
 int FAILURE ;
 int LBCIF_ADDRESS_REGISTER_OFFSET ;
 int LBCIF_CONTROL_LBCIF_ENABLE ;
 int LBCIF_CONTROL_REGISTER_OFFSET ;
 int LBCIF_DWORD1_GROUP_OFFSET ;
 int LBCIF_STATUS_ACK_ERROR ;
 int LBCIF_STATUS_I2C_IDLE ;
 int LBCIF_STATUS_PHY_QUEUE_AVAIL ;
 int MAX_NUM_REGISTER_POLLS ;
 int SUCCESS ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int ,int *) ;
 scalar_t__ pci_write_config_byte (struct pci_dev*,int ,int) ;
 scalar_t__ pci_write_config_dword (struct pci_dev*,int ,int ) ;

int EepromReadByte(struct et131x_adapter *etdev, u32 addr, u8 *pdata)
{
 struct pci_dev *pdev = etdev->pdev;
 int index;
 int err = 0;
 u8 control;
 u8 status = 0;
 u32 dword1 = 0;
 for (index = 0; index < MAX_NUM_REGISTER_POLLS; index++) {

  if (pci_read_config_dword(pdev, LBCIF_DWORD1_GROUP_OFFSET,
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
  return FAILURE;


 control = 0;
 control |= LBCIF_CONTROL_LBCIF_ENABLE;

 if (pci_write_config_byte(pdev, LBCIF_CONTROL_REGISTER_OFFSET,
      control)) {
  return FAILURE;
 }



 if (pci_write_config_dword(pdev, LBCIF_ADDRESS_REGISTER_OFFSET,
       addr)) {
  return FAILURE;
 }


 for (index = 0; index < MAX_NUM_REGISTER_POLLS; index++) {

  if (pci_read_config_dword(pdev, LBCIF_DWORD1_GROUP_OFFSET,
       &dword1)) {
   err = 1;
   break;
  }

  status = EXTRACT_STATUS_REGISTER(dword1);

  if (status & LBCIF_STATUS_PHY_QUEUE_AVAIL
      && status & LBCIF_STATUS_I2C_IDLE) {

   break;
  }
 }

 if (err || (index >= MAX_NUM_REGISTER_POLLS))
  return FAILURE;


 *pdata = EXTRACT_DATA_REGISTER(dword1);

 return (status & LBCIF_STATUS_ACK_ERROR) ? FAILURE : SUCCESS;
}
