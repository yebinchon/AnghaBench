
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_max; int rlim_cur; } ;


 int RLIMIT_CORE ;
 int SIGABRT ;
 int SIG_DFL ;
 int diagnostic_abort_on_error (int ) ;
 int fatal_error (char*) ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int global_dc ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int signal (int ,int ) ;

__attribute__((used)) static void
setup_core_dumping (void)
{
  diagnostic_abort_on_error (global_dc);
}
