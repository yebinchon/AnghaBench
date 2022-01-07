
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_atom {int type; int wait_sem; int duration; } ;
struct perf_sched {int dummy; } ;


 int BUG_ON (int) ;




 int burn_nsecs (struct perf_sched*,int ) ;
 int sem_post (int ) ;
 int sem_wait (int ) ;

__attribute__((used)) static void perf_sched__process_event(struct perf_sched *sched,
          struct sched_atom *atom)
{
 int ret = 0;

 switch (atom->type) {
  case 130:
   burn_nsecs(sched, atom->duration);
   break;
  case 129:
   if (atom->wait_sem)
    ret = sem_wait(atom->wait_sem);
   BUG_ON(ret);
   break;
  case 128:
   if (atom->wait_sem)
    ret = sem_post(atom->wait_sem);
   BUG_ON(ret);
   break;
  case 131:
   break;
  default:
   BUG_ON(1);
 }
}
