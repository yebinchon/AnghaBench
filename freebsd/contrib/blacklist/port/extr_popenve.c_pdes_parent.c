
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int fd; struct pid* next; int pid; int * fp; } ;
typedef int pid_t ;
typedef int FILE ;


 int close (int) ;
 int * fdopen (int,char const*) ;
 struct pid* pidlist ;

__attribute__((used)) static void
pdes_parent(int *pdes, struct pid *cur, pid_t pid, const char *type)
{
 FILE *iop;


 if (*type == 'r') {
  iop = fdopen(pdes[0], type);



  (void)close(pdes[1]);
 } else {
  iop = fdopen(pdes[1], type);



  (void)close(pdes[0]);
 }


 cur->fp = iop;
 cur->pid = pid;
 cur->next = pidlist;
 pidlist = cur;
}
