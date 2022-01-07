
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int * fp; } ;
typedef int pid_t ;
typedef int FILE ;


 int _exit (int) ;
 int errno ;
 int execve (char const*,char* const*,char* const*) ;
 int pdes_child (int*,char const*) ;
 int pdes_error (int*,struct pid*) ;
 struct pid* pdes_get (int*,char const**) ;
 int pdes_parent (int*,struct pid*,int ,char const*) ;
 int pidlist_lock ;
 int rwlock_rdlock (int *) ;
 int rwlock_unlock (int *) ;
 int vfork () ;

FILE *
popenve(const char *cmd, char *const *argv, char *const *envp, const char *type)
{
 struct pid *cur;
 int pdes[2], serrno;
 pid_t pid;

 if ((cur = pdes_get(pdes, &type)) == ((void*)0))
  return ((void*)0);




 switch (pid = vfork()) {
 case -1:
  serrno = errno;



  pdes_error(pdes, cur);
  errno = serrno;
  return ((void*)0);

 case 0:
  pdes_child(pdes, type);
  execve(cmd, argv, envp);
  _exit(127);

 }

 pdes_parent(pdes, cur, pid, type);





 return cur->fp;
}
