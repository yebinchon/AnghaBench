
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {char* ki_comm; scalar_t__ ki_pid; } ;


 int assert (int ) ;
 int kd ;
 char** kvm_getargv (int ,struct kinfo_proc const*,int ) ;
 scalar_t__ longfmt ;
 scalar_t__ matchargs ;
 int pgrep ;
 int printf (char*,...) ;
 int putchar (char) ;
 scalar_t__ quiet ;

__attribute__((used)) static void
show_process(const struct kinfo_proc *kp)
{
 char **argv;

 if (quiet) {
  assert(pgrep);
  return;
 }
 if ((longfmt || !pgrep) && matchargs &&
     (argv = kvm_getargv(kd, kp, 0)) != ((void*)0)) {
  printf("%d ", (int)kp->ki_pid);
  for (; *argv != ((void*)0); argv++) {
   printf("%s", *argv);
   if (argv[1] != ((void*)0))
    putchar(' ');
  }
 } else if (longfmt || !pgrep)
  printf("%d %s", (int)kp->ki_pid, kp->ki_comm);
 else
  printf("%d", (int)kp->ki_pid);
}
