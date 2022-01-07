
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int posix_spawn (int *,char*,int *,int *,int *,int *) ;
 int waitpid (int ,int *,int ) ;

void
go(void)
{
 pid_t pid;

 (void) posix_spawn(&pid, "/bin/ls", ((void*)0), ((void*)0), ((void*)0), ((void*)0));

 (void) waitpid(pid, ((void*)0), 0);
}
