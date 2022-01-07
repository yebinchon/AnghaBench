
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_target {int system_wide; int * uid_str; scalar_t__ tid; int * cpu_list; scalar_t__ pid; } ;
typedef enum perf_target_errno { ____Placeholder_perf_target_errno } perf_target_errno ;


 int PERF_ERRNO_TARGET__PID_OVERRIDE_CPU ;
 int PERF_ERRNO_TARGET__PID_OVERRIDE_SYSTEM ;
 int PERF_ERRNO_TARGET__PID_OVERRIDE_UID ;
 int PERF_ERRNO_TARGET__SUCCESS ;
 int PERF_ERRNO_TARGET__UID_OVERRIDE_CPU ;
 int PERF_ERRNO_TARGET__UID_OVERRIDE_SYSTEM ;

enum perf_target_errno perf_target__validate(struct perf_target *target)
{
 enum perf_target_errno ret = PERF_ERRNO_TARGET__SUCCESS;

 if (target->pid)
  target->tid = target->pid;


 if (target->tid && target->cpu_list) {
  target->cpu_list = ((void*)0);
  if (ret == PERF_ERRNO_TARGET__SUCCESS)
   ret = PERF_ERRNO_TARGET__PID_OVERRIDE_CPU;
 }


 if (target->tid && target->uid_str) {
  target->uid_str = ((void*)0);
  if (ret == PERF_ERRNO_TARGET__SUCCESS)
   ret = PERF_ERRNO_TARGET__PID_OVERRIDE_UID;
 }


 if (target->uid_str && target->cpu_list) {
  target->cpu_list = ((void*)0);
  if (ret == PERF_ERRNO_TARGET__SUCCESS)
   ret = PERF_ERRNO_TARGET__UID_OVERRIDE_CPU;
 }


 if (target->tid && target->system_wide) {
  target->system_wide = 0;
  if (ret == PERF_ERRNO_TARGET__SUCCESS)
   ret = PERF_ERRNO_TARGET__PID_OVERRIDE_SYSTEM;
 }


 if (target->uid_str && target->system_wide) {
  target->system_wide = 0;
  if (ret == PERF_ERRNO_TARGET__SUCCESS)
   ret = PERF_ERRNO_TARGET__UID_OVERRIDE_SYSTEM;
 }

 return ret;
}
