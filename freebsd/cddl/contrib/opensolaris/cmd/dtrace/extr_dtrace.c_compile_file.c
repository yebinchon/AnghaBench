
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dc_arg; char* dc_desc; char* dc_name; int * dc_prog; } ;
typedef TYPE_1__ dtrace_cmd_t ;
typedef int FILE ;


 int dfatal (char*,char*) ;
 int * dtrace_program_fcompile (int ,int *,int ,int ,char**) ;
 int fatal (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int g_argc ;
 char** g_argv ;
 int g_cflags ;
 int g_dtp ;

__attribute__((used)) static void
compile_file(dtrace_cmd_t *dcp)
{
 char *arg0;
 FILE *fp;

 if ((fp = fopen(dcp->dc_arg, "r")) == ((void*)0))
  fatal("failed to open %s", dcp->dc_arg);

 arg0 = g_argv[0];
 g_argv[0] = dcp->dc_arg;

 if ((dcp->dc_prog = dtrace_program_fcompile(g_dtp, fp,
     g_cflags, g_argc, g_argv)) == ((void*)0))
  dfatal("failed to compile script %s", dcp->dc_arg);

 g_argv[0] = arg0;
 (void) fclose(fp);

 dcp->dc_desc = "script";
 dcp->dc_name = dcp->dc_arg;
}
