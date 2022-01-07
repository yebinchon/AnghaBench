
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct et131x_adapter {int SpeedDuplex; int RegistryJumboPacket; int AiForceSpeed; int AiForceDpx; TYPE_1__* pdev; int CurrentAddress; int RegistryNMIDisable; } ;
struct TYPE_2__ {scalar_t__ device; int dev; } ;


 scalar_t__ ET131X_PCI_DEVICE_ID_FAST ;
 int ETH_ALEN ;
 int dev_info (int *,char*,int) ;
 int et131x_nmi_disable ;
 int et131x_speed_set ;
 int memcpy (int ,int const*,int ) ;

void et131x_config_parse(struct et131x_adapter *etdev)
{
 static const u8 default_mac[] = { 0x00, 0x05, 0x3d, 0x00, 0x02, 0x00 };
 static const u8 duplex[] = { 0, 1, 2, 1, 2, 2 };
 static const u16 speed[] = { 0, 10, 10, 100, 100, 1000 };

 if (et131x_speed_set)
  dev_info(&etdev->pdev->dev,
   "Speed set manually to : %d \n", et131x_speed_set);

 etdev->SpeedDuplex = et131x_speed_set;
 etdev->RegistryJumboPacket = 1514;

 etdev->RegistryNMIDisable = et131x_nmi_disable;


 memcpy(etdev->CurrentAddress, default_mac, ETH_ALEN);
 if (etdev->pdev->device == ET131X_PCI_DEVICE_ID_FAST &&
     etdev->SpeedDuplex == 5)
  etdev->SpeedDuplex = 4;

 etdev->AiForceSpeed = speed[etdev->SpeedDuplex];
 etdev->AiForceDpx = duplex[etdev->SpeedDuplex];
}
