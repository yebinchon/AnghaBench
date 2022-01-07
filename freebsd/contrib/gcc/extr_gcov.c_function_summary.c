
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ calls; int calls_executed; scalar_t__ branches; int branches_taken; int branches_executed; scalar_t__ lines; int lines_executed; int name; } ;
typedef TYPE_1__ coverage_t ;


 scalar_t__ flag_branches ;
 int fnotice (int ,char*,...) ;
 int format_gcov (int ,scalar_t__,int) ;
 int stdout ;

__attribute__((used)) static void
function_summary (const coverage_t *coverage, const char *title)
{
  fnotice (stdout, "%s '%s'\n", title, coverage->name);

  if (coverage->lines)
    fnotice (stdout, "Lines executed:%s of %d\n",
      format_gcov (coverage->lines_executed, coverage->lines, 2),
      coverage->lines);
  else
    fnotice (stdout, "No executable lines\n");

  if (flag_branches)
    {
      if (coverage->branches)
 {
   fnotice (stdout, "Branches executed:%s of %d\n",
     format_gcov (coverage->branches_executed,
    coverage->branches, 2),
     coverage->branches);
   fnotice (stdout, "Taken at least once:%s of %d\n",
     format_gcov (coverage->branches_taken,
    coverage->branches, 2),
     coverage->branches);
 }
      else
 fnotice (stdout, "No branches\n");
      if (coverage->calls)
 fnotice (stdout, "Calls executed:%s of %d\n",
   format_gcov (coverage->calls_executed, coverage->calls, 2),
   coverage->calls);
      else
 fnotice (stdout, "No calls\n");
    }
}
