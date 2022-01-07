
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fb_owning_channel; } ;


 int ERESOURCESNOTFREED ;
 int MAX_DUM_CHANNELS ;
 TYPE_1__ dum_data ;

int pnx4008_set_dum_exit_notification(int dev_id)
{
 int i;

 for (i = 0; i < MAX_DUM_CHANNELS; i++)
  if (dum_data.fb_owning_channel[i] == dev_id)
   return -ERESOURCESNOTFREED;

 return 0;
}
