
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_SIGNAL_0 ;
 int fork_inferior (char*,char*,char**,int ,int ,int *,int *) ;
 int * pre_fork_inferior ;
 int proceed (int ,int ,int ) ;
 int ptrace_him ;
 int ptrace_me ;

__attribute__((used)) static void
child_create_inferior (char *exec_file, char *allargs, char **env)
{



  fork_inferior (exec_file, allargs, env, ptrace_me, ptrace_him, ((void*)0), ((void*)0));



  proceed ((CORE_ADDR) -1, TARGET_SIGNAL_0, 0);
}
