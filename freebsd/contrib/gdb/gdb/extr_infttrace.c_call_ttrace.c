
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttstate_t ;
typedef int ttreq_t ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;


 int ESRCH ;
 int PIDGET (int ) ;
 int TT_LWP_RUREGS ;
 int TT_OK (int,int) ;
 int TT_PROC_SETTRC ;
 int any_thread_records () ;
 int call_real_ttrace (int,int,int,int,int,int) ;
 scalar_t__ debug_on ;
 int errno ;
 int error (char*,...) ;
 int get_pid_for (int) ;
 char* get_printable_name_of_ttrace_request (int) ;
 scalar_t__ is_process_ttrace_request (int) ;
 int make_process_version (int) ;
 int map_from_gdb_tid (int) ;
 int null_ptid ;
 int printf (char*,...) ;
 scalar_t__ ptid_equal (int ,int ) ;
 int saved_real_ptid ;
 int warning (char*) ;

__attribute__((used)) static int
call_ttrace (ttreq_t request, int gdb_tid, TTRACE_ARG_TYPE addr,
      TTRACE_ARG_TYPE data, TTRACE_ARG_TYPE addr2)
{
  lwpid_t real_tid;
  int real_pid;
  ttreq_t new_request;
  int tt_status;
  char reason_for_failure[100];
  if (gdb_tid == 0)
    {
      errno = ESRCH;
      return -1;
    }




  if (!any_thread_records ())
    {




      errno = ESRCH;
      return -1;
    }




  real_tid = map_from_gdb_tid (gdb_tid);
  real_pid = get_pid_for (real_tid);





  if (0 == real_pid)
    {
      ttstate_t thread_state;






      if (is_process_ttrace_request (request))
 {







   new_request = make_process_version (request);
   if (new_request == -1)
     {
       if (! ptid_equal (saved_real_ptid, null_ptid))
  {






    real_pid = PIDGET (saved_real_ptid);
    real_tid = gdb_tid;
  }

       else
  error ("Unable to perform thread operation");
     }

   else
     {



       real_pid = gdb_tid;
       real_tid = 0;
       request = new_request;
     }
 }

      else
 {


   error ("Thread request with no threads (%s)",
   get_printable_name_of_ttrace_request (request));
 }
    }




  if (is_process_ttrace_request (request))
    {
      real_tid = 0;
    }
  tt_status = call_real_ttrace (request, real_pid, real_tid, addr, data, addr2);
  return tt_status;
}
