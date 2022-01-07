
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct timerfd_ctx {int tmr; } ;
struct TYPE_5__ {scalar_t__ tv64; } ;
typedef TYPE_1__ ktime_t ;


 TYPE_1__ hrtimer_expires_remaining (int *) ;
 TYPE_1__ ktime_set (int ,int ) ;

__attribute__((used)) static ktime_t timerfd_get_remaining(struct timerfd_ctx *ctx)
{
 ktime_t remaining;

 remaining = hrtimer_expires_remaining(&ctx->tmr);
 return remaining.tv64 < 0 ? ktime_set(0, 0): remaining;
}
