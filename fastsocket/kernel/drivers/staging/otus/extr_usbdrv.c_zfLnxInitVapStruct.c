
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16_t ;
struct TYPE_2__ {scalar_t__ openFlag; int * dev; } ;


 size_t ZM_VAP_PORT_NUMBER ;
 TYPE_1__* vap ;

void zfLnxInitVapStruct(void)
{
    u16_t i;

    for (i=0; i<ZM_VAP_PORT_NUMBER; i++)
    {
        vap[i].dev = ((void*)0);
        vap[i].openFlag = 0;
    }
}
