
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int MgntActSet_RF_State (struct net_device*,int ,int ) ;
 int RF_CHANGE_BY_PS ;
 int eRfOn ;

void rtl8225z4_rf_wakeup(struct net_device *dev)
{
 MgntActSet_RF_State(dev, eRfOn, RF_CHANGE_BY_PS);
}
