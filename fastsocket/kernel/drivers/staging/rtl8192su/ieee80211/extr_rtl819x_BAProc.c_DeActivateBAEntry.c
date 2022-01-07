
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {int bValid; int Timer; } ;
typedef TYPE_1__* PBA_RECORD ;


 int del_timer_sync (int *) ;

void DeActivateBAEntry( struct ieee80211_device* ieee, PBA_RECORD pBA)
{
 pBA->bValid = 0;
 del_timer_sync(&pBA->Timer);
}
