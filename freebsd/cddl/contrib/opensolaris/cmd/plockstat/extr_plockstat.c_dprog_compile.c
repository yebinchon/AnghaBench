
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_proginfo_t ;
typedef int dtrace_prog_t ;


 int DTRACE_PROBESPEC_NAME ;
 int dfatal (char*) ;
 int dtrace_program_exec (int ,int *,int *) ;
 int * dtrace_program_strcompile (int ,int ,int ,int ,int ,int *) ;
 int fprintf (int ,char*,char*) ;
 int fputs (int ,int ) ;
 int g_dtp ;
 scalar_t__ g_opt_V ;
 char* g_pname ;
 int g_prog ;
 int stderr ;

__attribute__((used)) static void
dprog_compile(void)
{
 dtrace_prog_t *prog;
 dtrace_proginfo_t info;

 if (g_opt_V) {
  (void) fprintf(stderr, "%s: vvvv D program vvvv\n", g_pname);
  (void) fputs(g_prog, stderr);
  (void) fprintf(stderr, "%s: ^^^^ D program ^^^^\n", g_pname);
 }

 if ((prog = dtrace_program_strcompile(g_dtp, g_prog,
     DTRACE_PROBESPEC_NAME, 0, 0, ((void*)0))) == ((void*)0))
  dfatal("failed to compile program");

 if (dtrace_program_exec(g_dtp, prog, &info) == -1)
  dfatal("failed to enable probes");
}
