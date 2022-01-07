
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct task_struct {int start_time; } ;


 int timespec_compare (int *,struct timespec*) ;

__attribute__((used)) static inline int started_after_time(struct task_struct *t1,
         struct timespec *time,
         struct task_struct *t2)
{
 int start_diff = timespec_compare(&t1->start_time, time);
 if (start_diff > 0) {
  return 1;
 } else if (start_diff < 0) {
  return 0;
 } else {
  return t1 > t2;
 }
}
