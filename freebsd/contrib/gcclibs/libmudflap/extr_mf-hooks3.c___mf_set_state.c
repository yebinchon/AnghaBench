
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mf_thread_data {int state; } ;
typedef enum __mf_state_enum { ____Placeholder___mf_state_enum } __mf_state_enum ;


 struct mf_thread_data* __mf_find_threadinfo (int) ;

void
__mf_set_state (enum __mf_state_enum new_state)
{
  struct mf_thread_data *data = __mf_find_threadinfo (1);
  data->state = new_state;
}
