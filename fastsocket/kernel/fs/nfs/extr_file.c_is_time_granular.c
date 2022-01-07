
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;



__attribute__((used)) static int
is_time_granular(struct timespec *ts) {
 return ((ts->tv_sec == 0) && (ts->tv_nsec <= 1000));
}
