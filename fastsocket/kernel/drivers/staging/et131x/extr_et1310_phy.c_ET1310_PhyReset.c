
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {int dummy; } ;


 int MiWrite (struct et131x_adapter*,int ,int) ;
 int PHY_CONTROL ;

void ET1310_PhyReset(struct et131x_adapter *etdev)
{
 MiWrite(etdev, PHY_CONTROL, 0x8000);
}
