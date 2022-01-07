
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;
struct pollfd {int dummy; } ;
struct poll_wqueues {int error; int pt; } ;
struct poll_list {int len; struct pollfd* entries; struct poll_list* next; } ;
typedef int poll_table ;
typedef int ktime_t ;


 int EINTR ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 scalar_t__ do_pollfd (struct pollfd*,int *) ;
 int poll_schedule_timeout (struct poll_wqueues*,int ,int *,unsigned long) ;
 unsigned long select_estimate_accuracy (struct timespec*) ;
 scalar_t__ signal_pending (int ) ;
 int timespec_to_ktime (struct timespec) ;

__attribute__((used)) static int do_poll(unsigned int nfds, struct poll_list *list,
     struct poll_wqueues *wait, struct timespec *end_time)
{
 poll_table* pt = &wait->pt;
 ktime_t expire, *to = ((void*)0);
 int timed_out = 0, count = 0;
 unsigned long slack = 0;


 if (end_time && !end_time->tv_sec && !end_time->tv_nsec) {
  pt = ((void*)0);
  timed_out = 1;
 }

 if (end_time && !timed_out)
  slack = select_estimate_accuracy(end_time);

 for (;;) {
  struct poll_list *walk;

  for (walk = list; walk != ((void*)0); walk = walk->next) {
   struct pollfd * pfd, * pfd_end;

   pfd = walk->entries;
   pfd_end = pfd + walk->len;
   for (; pfd != pfd_end; pfd++) {







    if (do_pollfd(pfd, pt)) {
     count++;
     pt = ((void*)0);
    }
   }
  }




  pt = ((void*)0);
  if (!count) {
   count = wait->error;
   if (signal_pending(current))
    count = -EINTR;
  }
  if (count || timed_out)
   break;






  if (end_time && !to) {
   expire = timespec_to_ktime(*end_time);
   to = &expire;
  }

  if (!poll_schedule_timeout(wait, TASK_INTERRUPTIBLE, to, slack))
   timed_out = 1;
 }
 return count;
}
