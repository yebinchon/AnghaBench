
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int pid; struct pid* next; int * fp; } ;
typedef int pid_t ;
typedef int FILE ;


 scalar_t__ EINTR ;
 scalar_t__ ESRCH ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int free (struct pid*) ;
 struct pid* pidlist ;
 int pidlist_lock ;
 int rwlock_unlock (int *) ;
 int rwlock_wrlock (int *) ;
 int waitpid (int ,int*,int ) ;

int
pcloseve(FILE *iop)
{
 struct pid *cur, *last;
 int pstat;
 pid_t pid;






 for (last = ((void*)0), cur = pidlist; cur; last = cur, cur = cur->next)
  if (cur->fp == iop)
   break;
 if (cur == ((void*)0)) {



  errno = ESRCH;
  return -1;
 }

 (void)fclose(iop);


 if (last == ((void*)0))
  pidlist = cur->next;
 else
  last->next = cur->next;





 do {
  pid = waitpid(cur->pid, &pstat, 0);
 } while (pid == -1 && errno == EINTR);

 free(cur);

 return pid == -1 ? -1 : pstat;
}
