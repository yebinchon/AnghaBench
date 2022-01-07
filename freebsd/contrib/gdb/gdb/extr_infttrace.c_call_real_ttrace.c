
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ttreq_t ;
typedef int pid_t ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;


 scalar_t__ EPROTO ;
 scalar_t__ TT_PROC_GET_FIRST_LWP_STATE ;
 scalar_t__ debug_on ;
 scalar_t__ errno ;
 char* get_printable_name_of_ttrace_request (scalar_t__) ;
 int perror_with_name (int ) ;
 int printf (char*,scalar_t__,...) ;
 int reason_for_failure ;
 int strcat (int ,char*) ;
 int strcpy (int ,char*) ;
 int ttrace (scalar_t__,int,int,int ,int ,int ) ;

__attribute__((used)) static int
call_real_ttrace (ttreq_t request, pid_t pid, lwpid_t tid, TTRACE_ARG_TYPE addr,
    TTRACE_ARG_TYPE data, TTRACE_ARG_TYPE addr2)
{
  int tt_status;

  errno = 0;
  tt_status = ttrace (request, pid, tid, addr, data, addr2);
  return tt_status;
}
