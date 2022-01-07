
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsRegulationTable {int dummy; } ;
struct TYPE_2__ {int regulationTable; } ;


 TYPE_1__* wd ;
 int zfMemoryCopy (int *,int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQueryRegulationTable(zdev_t* dev, struct zsRegulationTable* pEntry)
{
    zmw_get_wlan_dev(dev);

    zfMemoryCopy((u8_t*) pEntry, (u8_t*) &wd->regulationTable,
                 sizeof(struct zsRegulationTable));
}
