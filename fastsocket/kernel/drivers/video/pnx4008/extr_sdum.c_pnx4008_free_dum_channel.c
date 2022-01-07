
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fb_owning_channel; } ;


 int EFBNOTOWNER ;
 int EINVAL ;
 int MAX_DUM_CHANNELS ;
 int clear_channel (int) ;
 TYPE_1__ dum_data ;

int pnx4008_free_dum_channel(int channr, int dev_id)
{
 if (channr < 0 || channr > MAX_DUM_CHANNELS)
  return -EINVAL;
 else if (dum_data.fb_owning_channel[channr] != dev_id)
  return -EFBNOTOWNER;
 else {
  clear_channel(channr);
  dum_data.fb_owning_channel[channr] = -1;
 }

 return 0;
}
