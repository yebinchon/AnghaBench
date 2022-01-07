
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_4__ {scalar_t__ tv64; } ;
typedef TYPE_1__ ktime_t ;


 struct timespec ktime_to_timespec (TYPE_1__) ;

__attribute__((used)) static int ktime2ts(ktime_t kt, struct timespec *ts)
{
 if (kt.tv64) {
  *ts = ktime_to_timespec(kt);
  return 1;
 } else {
  return 0;
 }
}
