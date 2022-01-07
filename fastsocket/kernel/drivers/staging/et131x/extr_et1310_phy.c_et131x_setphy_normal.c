
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et131x_adapter {int dummy; } ;


 int ET1310_PhyPowerDown (struct et131x_adapter*,int ) ;
 int et131x_xcvr_init (struct et131x_adapter*) ;

int et131x_setphy_normal(struct et131x_adapter *adapter)
{
 int status;


 ET1310_PhyPowerDown(adapter, 0);
 status = et131x_xcvr_init(adapter);
 return status;
}
