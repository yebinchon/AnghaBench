
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; int dying; } ;
struct TYPE_5__ {scalar_t__ hard_byte_limit; scalar_t__ hard_packet_limit; scalar_t__ soft_byte_limit; scalar_t__ soft_packet_limit; } ;
struct TYPE_4__ {scalar_t__ bytes; scalar_t__ packets; scalar_t__ use_time; } ;
struct xfrm_state {TYPE_3__ km; TYPE_2__ lft; TYPE_1__ curlft; int timer; } ;


 int EINVAL ;
 scalar_t__ XFRM_STATE_EXPIRED ;
 scalar_t__ XFRM_STATE_VALID ;
 scalar_t__ get_seconds () ;
 int jiffies ;
 int km_state_expired (struct xfrm_state*,int ,int ) ;
 int mod_timer (int *,int ) ;

int xfrm_state_check_expire(struct xfrm_state *x)
{
 if (!x->curlft.use_time)
  x->curlft.use_time = get_seconds();

 if (x->km.state != XFRM_STATE_VALID)
  return -EINVAL;

 if (x->curlft.bytes >= x->lft.hard_byte_limit ||
     x->curlft.packets >= x->lft.hard_packet_limit) {
  x->km.state = XFRM_STATE_EXPIRED;
  mod_timer(&x->timer, jiffies);
  return -EINVAL;
 }

 if (!x->km.dying &&
     (x->curlft.bytes >= x->lft.soft_byte_limit ||
      x->curlft.packets >= x->lft.soft_packet_limit)) {
  x->km.dying = 1;
  km_state_expired(x, 0, 0);
 }
 return 0;
}
