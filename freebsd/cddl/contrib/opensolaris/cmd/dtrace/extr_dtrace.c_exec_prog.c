
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dtrace_stmt_f ;
struct TYPE_9__ {int dtat_class; int dtat_data; int dtat_name; } ;
struct TYPE_8__ {int dtat_class; int dtat_data; int dtat_name; } ;
struct TYPE_10__ {int dpi_matches; TYPE_2__ dpi_stmtattr; TYPE_1__ dpi_descattr; } ;
typedef TYPE_3__ dtrace_proginfo_t ;
typedef int dtrace_ecbdesc_t ;
struct TYPE_11__ {int dc_prog; int dc_name; int dc_desc; } ;
typedef TYPE_4__ dtrace_cmd_t ;


 int dfatal (char*,int ) ;
 int dtrace_class_name (int ) ;
 int dtrace_program_exec (int ,int ,TYPE_3__*) ;
 int dtrace_program_info (int ,int ,TYPE_3__*) ;
 int dtrace_stability_name (int ) ;
 int dtrace_stmt_iter (int ,int ,int *,int **) ;
 int g_dtp ;
 int g_exec ;
 int g_total ;
 scalar_t__ g_verbose ;
 scalar_t__ info_stmt ;
 int notice (char*,int ,int ,int,char*) ;
 int oprintf (char*,...) ;

__attribute__((used)) static void
exec_prog(const dtrace_cmd_t *dcp)
{
 dtrace_ecbdesc_t *last = ((void*)0);
 dtrace_proginfo_t dpi;

 if (!g_exec) {
  dtrace_program_info(g_dtp, dcp->dc_prog, &dpi);
 } else if (dtrace_program_exec(g_dtp, dcp->dc_prog, &dpi) == -1) {
  dfatal("failed to enable '%s'", dcp->dc_name);
 } else {
  notice("%s '%s' matched %u probe%s\n",
      dcp->dc_desc, dcp->dc_name,
      dpi.dpi_matches, dpi.dpi_matches == 1 ? "" : "s");
 }

 if (g_verbose) {
  oprintf("\nStability attributes for %s %s:\n",
      dcp->dc_desc, dcp->dc_name);

  oprintf("\n\tMinimum Probe Description Attributes\n");
  oprintf("\t\tIdentifier Names: %s\n",
      dtrace_stability_name(dpi.dpi_descattr.dtat_name));
  oprintf("\t\tData Semantics:   %s\n",
      dtrace_stability_name(dpi.dpi_descattr.dtat_data));
  oprintf("\t\tDependency Class: %s\n",
      dtrace_class_name(dpi.dpi_descattr.dtat_class));

  oprintf("\n\tMinimum Statement Attributes\n");

  oprintf("\t\tIdentifier Names: %s\n",
      dtrace_stability_name(dpi.dpi_stmtattr.dtat_name));
  oprintf("\t\tData Semantics:   %s\n",
      dtrace_stability_name(dpi.dpi_stmtattr.dtat_data));
  oprintf("\t\tDependency Class: %s\n",
      dtrace_class_name(dpi.dpi_stmtattr.dtat_class));

  if (!g_exec) {
   (void) dtrace_stmt_iter(g_dtp, dcp->dc_prog,
       (dtrace_stmt_f *)info_stmt, &last);
  } else
   oprintf("\n");
 }

 g_total += dpi.dpi_matches;
}
