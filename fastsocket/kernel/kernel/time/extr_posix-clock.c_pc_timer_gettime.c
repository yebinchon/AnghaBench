
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct posix_clock_desc {TYPE_2__* clk; } ;
struct k_itimer {int it_clock; } ;
struct itimerspec {int dummy; } ;
typedef int clockid_t ;
struct TYPE_3__ {int (* timer_gettime ) (TYPE_2__*,struct k_itimer*,struct itimerspec*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 scalar_t__ get_clock_desc (int ,struct posix_clock_desc*) ;
 int put_clock_desc (struct posix_clock_desc*) ;
 int stub1 (TYPE_2__*,struct k_itimer*,struct itimerspec*) ;

__attribute__((used)) static void pc_timer_gettime(struct k_itimer *kit, struct itimerspec *ts)
{
 clockid_t id = kit->it_clock;
 struct posix_clock_desc cd;

 if (get_clock_desc(id, &cd))
  return;

 if (cd.clk->ops.timer_gettime)
  cd.clk->ops.timer_gettime(cd.clk, kit, ts);

 put_clock_desc(&cd);
}
