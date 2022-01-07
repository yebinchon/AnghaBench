
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct uwb_rc {int beaconing; TYPE_2__* ies; TYPE_1__ uwb_dev; } ;
struct TYPE_4__ {int wIELength; } ;


 int dev_err (struct device*,char*,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int uwb_rc_set_ie (struct uwb_rc*,TYPE_2__*) ;
 int uwb_rc_start_beacon (struct uwb_rc*,unsigned int,int) ;
 int uwb_rc_stop_beacon (struct uwb_rc*) ;

int uwb_rc_beacon(struct uwb_rc *rc, int channel, unsigned bpst_offset)
{
 int result;
 struct device *dev = &rc->uwb_dev.dev;

 if (channel < 0)
  channel = -1;
 if (channel == -1)
  result = uwb_rc_stop_beacon(rc);
 else {

  result = uwb_rc_start_beacon(rc, bpst_offset, channel);
  if (result < 0)
   return result;
  if (le16_to_cpu(rc->ies->wIELength) > 0) {
   result = uwb_rc_set_ie(rc, rc->ies);
   if (result < 0) {
    dev_err(dev, "Cannot set new IE on device: "
     "%d\n", result);
    result = uwb_rc_stop_beacon(rc);
    channel = -1;
    bpst_offset = 0;
   }
  }
 }

 if (result >= 0)
  rc->beaconing = channel;
 return result;
}
