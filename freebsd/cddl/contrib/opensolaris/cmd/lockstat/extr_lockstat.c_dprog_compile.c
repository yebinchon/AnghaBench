
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_proginfo_t ;
typedef int dtrace_prog_t ;


 int DTRACE_PROBESPEC_NAME ;
 int dfail (char*) ;
 scalar_t__ dtrace_go (int ) ;
 int dtrace_program_exec (int ,int *,int *) ;
 int * dtrace_program_strcompile (int ,int ,int ,int ,int ,int *) ;
 int fprintf (int ,char*) ;
 int fputs (int ,int ) ;
 scalar_t__ g_Vflag ;
 int g_dtp ;
 int g_prog ;
 int stderr ;

__attribute__((used)) static void
dprog_compile()
{
 dtrace_prog_t *prog;
 dtrace_proginfo_t info;

 if (g_Vflag) {
  (void) fprintf(stderr, "lockstat: vvvv D program vvvv\n");
  (void) fputs(g_prog, stderr);
  (void) fprintf(stderr, "lockstat: ^^^^ D program ^^^^\n");
 }

 if ((prog = dtrace_program_strcompile(g_dtp, g_prog,
     DTRACE_PROBESPEC_NAME, 0, 0, ((void*)0))) == ((void*)0))
  dfail("failed to compile program");

 if (dtrace_program_exec(g_dtp, prog, &info) == -1)
  dfail("failed to enable probes");

 if (dtrace_go(g_dtp) != 0)
  dfail("couldn't start tracing");
}
