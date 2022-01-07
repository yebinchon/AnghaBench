
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dc_name; int dc_desc; int dc_ofile; int dc_prog; int dc_arg; } ;
typedef TYPE_1__ dtrace_cmd_t ;


 int DTRACE_D_PROBES ;
 char* basename (int ) ;
 int dfatal (char*,int ,int ) ;
 scalar_t__ dtrace_program_link (int ,int ,int ,int ,int ,int ) ;
 int g_cmdc ;
 int g_cmdv ;
 int g_dtp ;
 int g_objc ;
 int g_objv ;
 int * g_ofile ;
 int snprintf (int ,int,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (int ,int *,int) ;
 char* strrchr (int ,char) ;

__attribute__((used)) static void
link_prog(dtrace_cmd_t *dcp)
{
 char *p;

 if (g_cmdc == 1 && g_ofile != ((void*)0)) {
  (void) strlcpy(dcp->dc_ofile, g_ofile, sizeof (dcp->dc_ofile));
 } else if ((p = strrchr(dcp->dc_arg, '.')) != ((void*)0) &&
     strcmp(p, ".d") == 0) {
  p[0] = '\0';
  (void) snprintf(dcp->dc_ofile, sizeof (dcp->dc_ofile),
      "%s.o", basename(dcp->dc_arg));
 } else if (g_cmdc > 1) {
  (void) snprintf(dcp->dc_ofile, sizeof (dcp->dc_ofile),
      "d.out.%td", dcp - g_cmdv);
 } else {
  (void) snprintf(dcp->dc_ofile, sizeof (dcp->dc_ofile),
      "d.out");
 }

 if (dtrace_program_link(g_dtp, dcp->dc_prog, DTRACE_D_PROBES,
     dcp->dc_ofile, g_objc, g_objv) != 0)
  dfatal("failed to link %s %s", dcp->dc_desc, dcp->dc_name);
}
