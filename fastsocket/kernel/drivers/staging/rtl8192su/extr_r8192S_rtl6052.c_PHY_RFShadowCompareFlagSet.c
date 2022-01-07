
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int Compare; } ;
typedef size_t RF90_RADIO_PATH_E ;


 TYPE_1__** RF_Shadow ;

extern void PHY_RFShadowCompareFlagSet(
 struct net_device * dev,
 RF90_RADIO_PATH_E eRFPath,
 u32 Offset,
 u8 Type)
{

 RF_Shadow[eRFPath][Offset].Compare = Type;

}
