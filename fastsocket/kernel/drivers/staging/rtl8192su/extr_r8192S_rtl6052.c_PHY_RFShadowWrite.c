
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {size_t Value; int Driver_Write; } ;


 TYPE_1__** RF_Shadow ;
 size_t bRFRegOffsetMask ;

extern void PHY_RFShadowWrite(
 struct net_device * dev,
 u32 eRFPath,
 u32 Offset,
 u32 Data)
{

 RF_Shadow[eRFPath][Offset].Value = (Data & bRFRegOffsetMask);
 RF_Shadow[eRFPath][Offset].Driver_Write = 1;

}
