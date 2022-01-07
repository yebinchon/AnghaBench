
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;


 char* TASK_STATE_TO_CHAR_STR ;

__attribute__((used)) static char sched_out_state(u64 prev_state)
{
 const char *str = TASK_STATE_TO_CHAR_STR;

 return str[prev_state];
}
