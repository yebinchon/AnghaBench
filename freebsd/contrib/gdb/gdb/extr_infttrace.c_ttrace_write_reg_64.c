
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ EPROTO ;
 int TT_LWP_WUREGS ;
 scalar_t__ TT_PROC_GET_FIRST_LWP_STATE ;
 scalar_t__ debug_on ;
 scalar_t__ errno ;
 int get_pid_for (int) ;
 char* get_printable_name_of_ttrace_request (int ) ;
 int map_from_gdb_tid (int) ;
 int printf (char*,char*,int,int,int) ;
 scalar_t__ request ;
 int ttrace (int ,int,int,int ,int,int ) ;

int
ttrace_write_reg_64 (int gdb_tid, CORE_ADDR dest_addr, CORE_ADDR src_addr)
{
  pid_t pid;
  lwpid_t tid;
  int tt_status;

  tid = map_from_gdb_tid (gdb_tid);
  pid = get_pid_for (tid);

  errno = 0;
  tt_status = ttrace (TT_LWP_WUREGS,
        pid,
        tid,
        (TTRACE_ARG_TYPE) dest_addr,
        8,
        (TTRACE_ARG_TYPE) src_addr );
  return tt_status;
}
