
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const** argv; int in; int preexec_cb; } ;


 int X_OK ;
 int access (char*,int ) ;
 int atexit (int ) ;
 int close (int) ;
 int dup2 (int,int) ;
 char* getenv (char*) ;
 scalar_t__ isatty (int) ;
 char const** pager_argv ;
 int pager_preexec ;
 TYPE_1__ pager_process ;
 char* pager_program ;
 int perf_config (int ,int *) ;
 int perf_default_config ;
 int sigchain_push_common (int ) ;
 int spawned_pager ;
 scalar_t__ start_command (TYPE_1__*) ;
 int strcmp (char const*,char*) ;
 int wait_for_pager ;
 int wait_for_pager_signal ;

void setup_pager(void)
{
 const char *pager = getenv("PERF_PAGER");

 if (!isatty(1))
  return;
 if (!pager) {
  if (!pager_program)
   perf_config(perf_default_config, ((void*)0));
  pager = pager_program;
 }
 if (!pager)
  pager = getenv("PAGER");
 if (!pager) {
  if (!access("/usr/bin/pager", X_OK))
   pager = "/usr/bin/pager";
 }
 if (!pager)
  pager = "less";
 else if (!*pager || !strcmp(pager, "cat"))
  return;

 spawned_pager = 1;


 pager_argv[2] = pager;
 pager_process.argv = pager_argv;
 pager_process.in = -1;
 pager_process.preexec_cb = pager_preexec;

 if (start_command(&pager_process))
  return;


 dup2(pager_process.in, 1);
 if (isatty(2))
  dup2(pager_process.in, 2);
 close(pager_process.in);


 sigchain_push_common(wait_for_pager_signal);
 atexit(wait_for_pager);
}
