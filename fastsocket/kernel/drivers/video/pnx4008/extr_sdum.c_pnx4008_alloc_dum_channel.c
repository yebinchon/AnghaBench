
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fb_owning_channel; } ;


 int ENORESOURCESLEFT ;
 int MAX_DUM_CHANNELS ;
 TYPE_1__ dum_data ;

int pnx4008_alloc_dum_channel(int dev_id)
{
 int i = 0;

 while ((i < MAX_DUM_CHANNELS) && (dum_data.fb_owning_channel[i] != -1))
  i++;

 if (i == MAX_DUM_CHANNELS)
  return -ENORESOURCESLEFT;
 else {
  dum_data.fb_owning_channel[i] = dev_id;
  return i;
 }
}
