
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int Compare; int Recorver; int ErrorOrNot; int Driver_Write; scalar_t__ Value; } ;


 size_t RF6052_MAX_PATH ;
 size_t RF6052_MAX_REG ;
 TYPE_1__** RF_Shadow ;

extern void PHY_RFShadowRefresh(struct net_device * dev)
{
 u32 eRFPath;
 u32 Offset;

 for (eRFPath = 0; eRFPath < RF6052_MAX_PATH; eRFPath++)
 {
  for (Offset = 0; Offset <= RF6052_MAX_REG; Offset++)
  {
   RF_Shadow[eRFPath][Offset].Value = 0;
   RF_Shadow[eRFPath][Offset].Compare = 0;
   RF_Shadow[eRFPath][Offset].Recorver = 0;
   RF_Shadow[eRFPath][Offset].ErrorOrNot = 0;
   RF_Shadow[eRFPath][Offset].Driver_Write = 0;
  }
 }

}
