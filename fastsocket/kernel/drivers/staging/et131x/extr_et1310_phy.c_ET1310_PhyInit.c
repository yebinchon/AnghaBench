
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct et131x_adapter {int dummy; } ;


 int** ConfigPhy ;
 int MiRead (struct et131x_adapter*,int ,size_t*) ;
 int MiWrite (struct et131x_adapter*,int ,int) ;
 int PHY_CONTROL ;
 int PHY_DATA_REG ;
 int PHY_ID_1 ;
 int PHY_ID_2 ;
 int PHY_INDEX_REG ;
 int PHY_MPHY_CONTROL_REG ;

void ET1310_PhyInit(struct et131x_adapter *etdev)
{
 uint16_t data, index;

 if (etdev == ((void*)0))
  return;


 MiRead(etdev, PHY_ID_1, &data);
 MiRead(etdev, PHY_ID_2, &data);


 MiRead(etdev, PHY_MPHY_CONTROL_REG, &data);
 MiWrite(etdev, PHY_MPHY_CONTROL_REG, 0x0006);



 MiWrite(etdev, PHY_INDEX_REG, 0x0402);
 MiRead(etdev, PHY_DATA_REG, &data);


 MiWrite(etdev, PHY_MPHY_CONTROL_REG, 0x0002);


 MiRead(etdev, PHY_ID_1, &data);
 MiRead(etdev, PHY_ID_2, &data);


 MiRead(etdev, PHY_MPHY_CONTROL_REG, &data);
 MiWrite(etdev, PHY_MPHY_CONTROL_REG, 0x0006);



 MiWrite(etdev, PHY_INDEX_REG, 0x0402);
 MiRead(etdev, PHY_DATA_REG, &data);

 MiWrite(etdev, PHY_MPHY_CONTROL_REG, 0x0002);


 MiRead(etdev, PHY_CONTROL, &data);
 MiRead(etdev, PHY_MPHY_CONTROL_REG, &data);
 MiWrite(etdev, PHY_CONTROL, 0x1840);

 MiWrite(etdev, PHY_MPHY_CONTROL_REG, 0x0007);


 index = 0;
 while (ConfigPhy[index][0] != 0x0000) {

  MiWrite(etdev, PHY_INDEX_REG, ConfigPhy[index][0]);
  MiWrite(etdev, PHY_DATA_REG, ConfigPhy[index][1]);


  MiWrite(etdev, PHY_INDEX_REG, ConfigPhy[index][0]);
  MiRead(etdev, PHY_DATA_REG, &data);


  index++;
 }


 MiRead(etdev, PHY_CONTROL, &data);
 MiRead(etdev, PHY_MPHY_CONTROL_REG, &data);
 MiWrite(etdev, PHY_CONTROL, 0x1040);
 MiWrite(etdev, PHY_MPHY_CONTROL_REG, 0x0002);
}
