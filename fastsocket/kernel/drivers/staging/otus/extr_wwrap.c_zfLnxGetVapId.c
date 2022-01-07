
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct TYPE_2__ {int * dev; } ;


 size_t ZM_VAP_PORT_NUMBER ;
 TYPE_1__* vap ;

u16_t zfLnxGetVapId(zdev_t* dev)
{
    u16_t i;

    for (i=0; i<ZM_VAP_PORT_NUMBER; i++)
    {
        if (vap[i].dev == dev)
        {
            return i;
        }
    }
    return 0xffff;
}
