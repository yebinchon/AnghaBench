
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dc_desc; int dc_arg; int dc_name; int dc_spec; int * dc_prog; } ;
typedef TYPE_1__ dtrace_cmd_t ;


 int DTRACE_C_PSPEC ;
 int dfatal (char*,int ) ;
 int * dtrace_program_strcompile (int ,int ,int ,int,int ,int ) ;
 int g_argc ;
 int g_argv ;
 int g_cflags ;
 int g_dtp ;
 char* strpbrk (int ,char*) ;

__attribute__((used)) static void
compile_str(dtrace_cmd_t *dcp)
{
 char *p;

 if ((dcp->dc_prog = dtrace_program_strcompile(g_dtp, dcp->dc_arg,
     dcp->dc_spec, g_cflags | DTRACE_C_PSPEC, g_argc, g_argv)) == ((void*)0))
  dfatal("invalid probe specifier %s", dcp->dc_arg);

 if ((p = strpbrk(dcp->dc_arg, "{/;")) != ((void*)0))
  *p = '\0';

 dcp->dc_desc = "description";
 dcp->dc_name = dcp->dc_arg;
}
