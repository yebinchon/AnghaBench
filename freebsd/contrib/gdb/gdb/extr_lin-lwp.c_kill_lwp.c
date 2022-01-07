
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 int __NR_tkill ;
 scalar_t__ errno ;
 int kill (int,int) ;
 int syscall (int ,int,int) ;
 int tkill_failed ;

__attribute__((used)) static int
kill_lwp (int lwpid, int signo)
{
  errno = 0;
  return kill (lwpid, signo);
}
