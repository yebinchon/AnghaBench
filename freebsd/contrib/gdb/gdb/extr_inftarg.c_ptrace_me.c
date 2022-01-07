
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTRACE_ARG3_TYPE ;


 int call_ptrace (int ,int ,int ,int ) ;

__attribute__((used)) static void
ptrace_me (void)
{

  call_ptrace (0, 0, (PTRACE_ARG3_TYPE) 0, 0);
}
