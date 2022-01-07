
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u8 ;
struct pci_dev {int dev; } ;
struct et131x_adapter {int RegistryNMIDisable; int has_eeprom; int* eepromData; int* PermanentAddress; } ;
typedef int int32_t ;


 int EIO ;
 int ET1310_NMI_DISABLE ;
 int ET1310_PCI_ACK_NACK ;
 int ET1310_PCI_EEPROM_STATUS ;
 int ET1310_PCI_L0L1LATENCY ;
 int ET1310_PCI_MAC_ADDRESS ;
 int ET1310_PCI_MAX_PYLD ;
 int ET1310_PCI_REPLAY ;
 int ETH_ALEN ;
 int EepromReadByte (struct et131x_adapter*,int,int*) ;
 int EepromWriteByte (struct et131x_adapter*,int,int) ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_REVISION_ID ;
 int dev_err (int *,char*,...) ;
 int inb (int ) ;
 int outb (int ,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int const) ;

int et131x_find_adapter(struct et131x_adapter *adapter, struct pci_dev *pdev)
{
 int result;
 uint8_t eepromStat;
 uint8_t maxPayload = 0;
 uint8_t read_size_reg;
 u8 rev;




 if (adapter->RegistryNMIDisable) {
  uint8_t RegisterVal;

  RegisterVal = inb(ET1310_NMI_DISABLE);
  RegisterVal &= 0xf3;

  if (adapter->RegistryNMIDisable == 2)
   RegisterVal |= 0xc;

  outb(ET1310_NMI_DISABLE, RegisterVal);
 }




 result = pci_read_config_byte(pdev, ET1310_PCI_EEPROM_STATUS,
          &eepromStat);







 result = pci_read_config_byte(pdev, ET1310_PCI_EEPROM_STATUS,
          &eepromStat);
 if (result != PCIBIOS_SUCCESSFUL) {
  dev_err(&pdev->dev, "Could not read PCI config space for "
     "EEPROM Status\n");
  return -EIO;
 }




 if (eepromStat & 0x4C) {
  result = pci_read_config_byte(pdev, PCI_REVISION_ID, &rev);
  if (result != PCIBIOS_SUCCESSFUL) {
   dev_err(&pdev->dev,
      "Could not read PCI config space for "
      "Revision ID\n");
   return -EIO;
  } else if (rev == 0x01) {
   int32_t nLoop;
   uint8_t temp[4] = { 0xFE, 0x13, 0x10, 0xFF };





   for (nLoop = 0; nLoop < 3; nLoop++) {
    EepromWriteByte(adapter, nLoop, temp[nLoop]);
   }
  }

  dev_err(&pdev->dev, "Fatal EEPROM Status Error - 0x%04x\n", eepromStat);







  adapter->has_eeprom = 0;
  return -EIO;
 } else
  adapter->has_eeprom = 1;




 EepromReadByte(adapter, 0x70, &adapter->eepromData[0]);
 EepromReadByte(adapter, 0x71, &adapter->eepromData[1]);

 if (adapter->eepromData[0] != 0xcd)

  adapter->eepromData[1] = 0x00;




 result = pci_read_config_byte(pdev, ET1310_PCI_MAX_PYLD, &maxPayload);
 if (result != PCIBIOS_SUCCESSFUL) {
  dev_err(&pdev->dev,
      "Could not read PCI config space for Max Payload Size\n");
  return -EIO;
 }


 maxPayload &= 0x07;

 if (maxPayload < 2) {
  const uint16_t AckNak[2] = { 0x76, 0xD0 };
  const uint16_t Replay[2] = { 0x1E0, 0x2ED };

  result = pci_write_config_word(pdev, ET1310_PCI_ACK_NACK,
            AckNak[maxPayload]);
  if (result != PCIBIOS_SUCCESSFUL) {
   dev_err(&pdev->dev,
     "Could not write PCI config space for ACK/NAK\n");
   return -EIO;
  }

  result = pci_write_config_word(pdev, ET1310_PCI_REPLAY,
            Replay[maxPayload]);
  if (result != PCIBIOS_SUCCESSFUL) {
   dev_err(&pdev->dev,
     "Could not write PCI config space for Replay Timer\n");
   return -EIO;
  }
 }




 result = pci_write_config_byte(pdev, ET1310_PCI_L0L1LATENCY, 0x11);
 if (result != PCIBIOS_SUCCESSFUL) {
  dev_err(&pdev->dev,
    "Could not write PCI config space for Latency Timers\n");
  return -EIO;
 }


 result = pci_read_config_byte(pdev, 0x51, &read_size_reg);
 if (result != PCIBIOS_SUCCESSFUL) {
  dev_err(&pdev->dev,
   "Could not read PCI config space for Max read size\n");
  return -EIO;
 }

 read_size_reg &= 0x8f;
 read_size_reg |= 0x40;

 result = pci_write_config_byte(pdev, 0x51, read_size_reg);
 if (result != PCIBIOS_SUCCESSFUL) {
  dev_err(&pdev->dev,
        "Could not write PCI config space for Max read size\n");
  return -EIO;
 }




 if (adapter->has_eeprom) {
  int i;

  for (i = 0; i < ETH_ALEN; i++) {
   result = pci_read_config_byte(
     pdev, ET1310_PCI_MAC_ADDRESS + i,
     adapter->PermanentAddress + i);
   if (result != PCIBIOS_SUCCESSFUL) {
    dev_err(&pdev->dev, ";Could not read PCI config space for MAC address\n");
    return -EIO;
   }
  }
 }
 return 0;
}
