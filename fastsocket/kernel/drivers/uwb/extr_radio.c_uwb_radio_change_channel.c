
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int beaconing; } ;


 int uwb_radio_channel_changed (struct uwb_rc*,int) ;
 int uwb_rc_beacon (struct uwb_rc*,int,int ) ;

__attribute__((used)) static int uwb_radio_change_channel(struct uwb_rc *rc, int channel)
{
 int ret = 0;

 if (channel == -1)
  uwb_radio_channel_changed(rc, channel);

 if (channel != rc->beaconing) {
  if (rc->beaconing != -1 && channel != -1) {




   ret = uwb_radio_change_channel(rc, -1);
   if (ret < 0)
    return ret;
  }
  ret = uwb_rc_beacon(rc, channel, 0);
 }

 if (channel != -1)
  uwb_radio_channel_changed(rc, rc->beaconing);

 return ret;
}
