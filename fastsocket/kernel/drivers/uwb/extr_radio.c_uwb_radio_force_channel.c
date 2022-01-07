
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct uwb_rc {int beaconing_forced; TYPE_1__ uwb_dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_radio_change_channel (struct uwb_rc*,int ) ;
 int uwb_radio_select_channel (struct uwb_rc*) ;

int uwb_radio_force_channel(struct uwb_rc *rc, int channel)
{
 int ret = 0;

 mutex_lock(&rc->uwb_dev.mutex);

 rc->beaconing_forced = channel;
 ret = uwb_radio_change_channel(rc, uwb_radio_select_channel(rc));

 mutex_unlock(&rc->uwb_dev.mutex);
 return ret;
}
