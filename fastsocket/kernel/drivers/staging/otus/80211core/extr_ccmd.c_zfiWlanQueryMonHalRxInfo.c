
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
struct zsMonHalRxInfo {int dummy; } ;


 int zfHpQueryMonHalRxInfo (int *,int *) ;

void zfiWlanQueryMonHalRxInfo(zdev_t *dev, struct zsMonHalRxInfo *monHalRxInfo)
{
 zfHpQueryMonHalRxInfo(dev, (u8_t *)monHalRxInfo);
}
