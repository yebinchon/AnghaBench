
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttwopt_t ;
typedef int ttstate_t ;
typedef int thread_info ;
typedef int lwpid_t ;


 scalar_t__ debug_on ;
 scalar_t__ errno ;
 int perror_with_name (char*) ;
 int printf (char*,int,int) ;
 int ttrace_wait (int,int,int ,int *,size_t) ;

__attribute__((used)) static int
call_real_ttrace_wait (int pid, lwpid_t tid, ttwopt_t option, ttstate_t *tsp,
         size_t tsp_size)
{
  int ttw_status;
  thread_info *tinfo = ((void*)0);

  errno = 0;
  ttw_status = ttrace_wait (pid, tid, option, tsp, tsp_size);

  if (errno)
    {





      perror_with_name ("ttrace wait");
    }

  return ttw_status;
}
