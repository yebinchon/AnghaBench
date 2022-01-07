
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_thread_data {int opcode; int* mutexes; size_t opdata; int bkl; void* event; } ;


 int EINTR ;
 int EINVAL ;
 int MAX_RT_TEST_MUTEXES ;
 void* atomic_add_return (int,int *) ;
 int atomic_set (int *,int ) ;
 int lock_kernel () ;
 int * mutexes ;
 int rt_mutex_lock (int *) ;
 int rt_mutex_lock_interruptible (int *,int ) ;
 int rt_mutex_unlock (int *) ;
 int rttest_event ;
 int unlock_kernel () ;

__attribute__((used)) static int handle_op(struct test_thread_data *td, int lockwakeup)
{
 int i, id, ret = -EINVAL;

 switch(td->opcode) {

 case 132:
  return 0;

 case 136:
  td->mutexes[td->opdata] = 1;
  td->event = atomic_add_return(1, &rttest_event);
  return 0;

 case 131:
  for (i = 0; i < MAX_RT_TEST_MUTEXES; i++) {
   if (td->mutexes[i] == 4) {
    rt_mutex_unlock(&mutexes[i]);
    td->mutexes[i] = 0;
   }
  }

  if (!lockwakeup && td->bkl == 4) {
   unlock_kernel();
   td->bkl = 0;
  }
  return 0;

 case 130:
  atomic_set(&rttest_event, 0);
  return 0;

 default:
  if (lockwakeup)
   return ret;
 }

 switch(td->opcode) {

 case 138:
 case 133:
  id = td->opdata;
  if (id < 0 || id >= MAX_RT_TEST_MUTEXES)
   return ret;

  td->mutexes[id] = 1;
  td->event = atomic_add_return(1, &rttest_event);
  rt_mutex_lock(&mutexes[id]);
  td->event = atomic_add_return(1, &rttest_event);
  td->mutexes[id] = 4;
  return 0;

 case 135:
 case 134:
  id = td->opdata;
  if (id < 0 || id >= MAX_RT_TEST_MUTEXES)
   return ret;

  td->mutexes[id] = 1;
  td->event = atomic_add_return(1, &rttest_event);
  ret = rt_mutex_lock_interruptible(&mutexes[id], 0);
  td->event = atomic_add_return(1, &rttest_event);
  td->mutexes[id] = ret ? 0 : 4;
  return ret ? -EINTR : 0;

 case 129:
  id = td->opdata;
  if (id < 0 || id >= MAX_RT_TEST_MUTEXES || td->mutexes[id] != 4)
   return ret;

  td->event = atomic_add_return(1, &rttest_event);
  rt_mutex_unlock(&mutexes[id]);
  td->event = atomic_add_return(1, &rttest_event);
  td->mutexes[id] = 0;
  return 0;

 case 137:
  if (td->bkl)
   return 0;
  td->bkl = 1;
  lock_kernel();
  td->bkl = 4;
  return 0;

 case 128:
  if (td->bkl != 4)
   break;
  unlock_kernel();
  td->bkl = 0;
  return 0;

 default:
  break;
 }
 return ret;
}
