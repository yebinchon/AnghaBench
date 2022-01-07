
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int value; } ;
struct qos_info {TYPE_2__ min_turn_time; TYPE_1__ baud_rate; } ;
struct irlap_cb {int mtt_required; int xbofs_delay; } ;
typedef int __u32 ;


 int irlap_min_turn_time_in_bytes (int,int) ;

void irlap_wait_min_turn_around(struct irlap_cb *self, struct qos_info *qos)
{
 __u32 min_turn_time;
 __u32 speed;


 speed = qos->baud_rate.value;
 min_turn_time = qos->min_turn_time.value;


 if (speed > 115200) {
  self->mtt_required = min_turn_time;
  return;
 }






 self->xbofs_delay = irlap_min_turn_time_in_bytes(speed, min_turn_time);
}
