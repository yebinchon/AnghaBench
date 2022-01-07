
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct rusage {unsigned long ru_maxrss; int ru_stime; int ru_utime; int ru_oublock; int ru_inblock; int ru_majflt; int ru_minflt; int ru_nivcsw; int ru_nvcsw; } ;
struct mm_struct {int dummy; } ;
typedef int cputime_t ;
struct TYPE_2__ {unsigned long maxrss; unsigned long cmaxrss; int oublock; int inblock; int maj_flt; int min_flt; int nivcsw; int nvcsw; int coublock; int cinblock; int cmaj_flt; int cmin_flt; int cnivcsw; int cnvcsw; int cstime; int cutime; } ;


 int BUG () ;
 int PAGE_SIZE ;



 int RUSAGE_THREAD ;
 int accumulate_thread_rusage (struct task_struct*,struct rusage*) ;
 int cputime_add (int ,int ) ;
 int cputime_to_timeval (int ,int *) ;
 int cputime_zero ;
 int current ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int lock_task_sighand (struct task_struct*,unsigned long*) ;
 int memset (char*,int ,int) ;
 int mmput (struct mm_struct*) ;
 struct task_struct* next_thread (struct task_struct*) ;
 int setmax_mm_hiwater_rss (unsigned long*,struct mm_struct*) ;
 int task_times (int ,int *,int *) ;
 int thread_group_times (struct task_struct*,int *,int *) ;
 int unlock_task_sighand (struct task_struct*,unsigned long*) ;

__attribute__((used)) static void k_getrusage(struct task_struct *p, int who, struct rusage *r)
{
 struct task_struct *t;
 unsigned long flags;
 cputime_t tgutime, tgstime, utime, stime;
 unsigned long maxrss = 0;

 memset((char *) r, 0, sizeof *r);
 utime = stime = cputime_zero;

 if (who == RUSAGE_THREAD) {
  task_times(current, &utime, &stime);
  accumulate_thread_rusage(p, r);
  maxrss = p->signal->maxrss;
  goto out;
 }

 if (!lock_task_sighand(p, &flags))
  return;

 switch (who) {
  case 130:
  case 129:
   utime = p->signal->cutime;
   stime = p->signal->cstime;
   r->ru_nvcsw = p->signal->cnvcsw;
   r->ru_nivcsw = p->signal->cnivcsw;
   r->ru_minflt = p->signal->cmin_flt;
   r->ru_majflt = p->signal->cmaj_flt;
   r->ru_inblock = p->signal->cinblock;
   r->ru_oublock = p->signal->coublock;
   maxrss = p->signal->cmaxrss;

   if (who == 129)
    break;

  case 128:
   thread_group_times(p, &tgutime, &tgstime);
   utime = cputime_add(utime, tgutime);
   stime = cputime_add(stime, tgstime);
   r->ru_nvcsw += p->signal->nvcsw;
   r->ru_nivcsw += p->signal->nivcsw;
   r->ru_minflt += p->signal->min_flt;
   r->ru_majflt += p->signal->maj_flt;
   r->ru_inblock += p->signal->inblock;
   r->ru_oublock += p->signal->oublock;
   if (maxrss < p->signal->maxrss)
    maxrss = p->signal->maxrss;
   t = p;
   do {
    accumulate_thread_rusage(t, r);
    t = next_thread(t);
   } while (t != p);
   break;

  default:
   BUG();
 }
 unlock_task_sighand(p, &flags);

out:
 cputime_to_timeval(utime, &r->ru_utime);
 cputime_to_timeval(stime, &r->ru_stime);

 if (who != 129) {
  struct mm_struct *mm = get_task_mm(p);
  if (mm) {
   setmax_mm_hiwater_rss(&maxrss, mm);
   mmput(mm);
  }
 }
 r->ru_maxrss = maxrss * (PAGE_SIZE / 1024);
}
