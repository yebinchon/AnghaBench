
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv64; } ;
struct timerfd_ctx {TYPE_1__ moffs; int might_cancel; } ;


 scalar_t__ KTIME_MAX ;
 TYPE_1__ ktime_get_monotonic_offset () ;

__attribute__((used)) static bool timerfd_canceled(struct timerfd_ctx *ctx)
{
 if (!ctx->might_cancel || ctx->moffs.tv64 != KTIME_MAX)
  return 0;
 ctx->moffs = ktime_get_monotonic_offset();
 return 1;
}
