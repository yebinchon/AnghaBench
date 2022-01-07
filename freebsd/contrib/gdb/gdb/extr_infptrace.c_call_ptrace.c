
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTRACE_ARG3_TYPE ;


 int PT_CONTIN1 ;
 int PT_CONTINUE ;
 int PT_SETTRC ;
 int PT_SINGLE1 ;
 int PT_STEP ;
 int errno ;
 int parent_attach_all (int,int,int) ;
 int perror_with_name (char*) ;
 int printf (char*,int,...) ;
 int ptrace (int,int,int,int,...) ;

int
call_ptrace (int request, int pid, PTRACE_ARG3_TYPE addr, int data)
{
  int pt_status = 0;
  pt_status = ptrace (request, pid, addr, data);
  return pt_status;
}
