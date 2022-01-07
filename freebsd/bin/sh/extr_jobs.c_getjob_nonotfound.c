
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct job {scalar_t__ used; int nprocs; TYPE_1__* ps; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {scalar_t__ pid; int cmd; } ;


 int error (char*,...) ;
 struct job* getcurjob (struct job*) ;
 scalar_t__ is_digit (char const) ;
 scalar_t__ is_number (char const*) ;
 struct job* jobtab ;
 int njobs ;
 int number (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,size_t) ;
 int * strstr (int ,char const*) ;

__attribute__((used)) static struct job *
getjob_nonotfound(const char *name)
{
 int jobno;
 struct job *found, *jp;
 size_t namelen;
 pid_t pid;
 int i;

 if (name == ((void*)0)) {



  error("No current job");

 }
 if (name[0] == '%') {
  if (is_digit(name[1])) {
   jobno = number(name + 1);
   if (jobno > 0 && jobno <= njobs
    && jobtab[jobno - 1].used != 0)
    return &jobtab[jobno - 1];
  } else if (name[1] == '?') {
   found = ((void*)0);
   for (jp = jobtab, i = njobs ; --i >= 0 ; jp++) {
    if (jp->used && jp->nprocs > 0
     && strstr(jp->ps[0].cmd, name + 2) != ((void*)0)) {
     if (found)
      error("%s: ambiguous", name);
     found = jp;
    }
   }
   if (found != ((void*)0))
    return (found);
  } else {
   namelen = strlen(name);
   found = ((void*)0);
   for (jp = jobtab, i = njobs ; --i >= 0 ; jp++) {
    if (jp->used && jp->nprocs > 0
     && strncmp(jp->ps[0].cmd, name + 1,
     namelen - 1) == 0) {
     if (found)
      error("%s: ambiguous", name);
     found = jp;
    }
   }
   if (found)
    return found;
  }
 } else if (is_number(name)) {
  pid = (pid_t)number(name);
  for (jp = jobtab, i = njobs ; --i >= 0 ; jp++) {
   if (jp->used && jp->nprocs > 0
    && jp->ps[jp->nprocs - 1].pid == pid)
    return jp;
  }
 }
 return ((void*)0);
}
