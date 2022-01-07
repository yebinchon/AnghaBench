
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ls_event; scalar_t__ ls_count; scalar_t__ ls_lock; scalar_t__ ls_caller; scalar_t__* ls_stack; scalar_t__ ls_next; scalar_t__ ls_time; } ;
typedef TYPE_1__ lsrec_t ;
typedef int FILE ;


 int LS_MAX_EVENTS ;
 int LS_STACK (int) ;
 int fflush (int *) ;
 char* format_symbol (char*,scalar_t__,int ) ;
 int fprintf (int *,char*,...) ;
 int g_nrecs_used ;
 int g_pflag ;
 int g_recsize ;

__attribute__((used)) static void
report_trace(FILE *out, lsrec_t **sort_buf)
{
 lsrec_t *lsp;
 int i, fr;
 int rectype;
 char buf[256], buf2[256];

 rectype = g_recsize;

 if (!g_pflag) {
  (void) fprintf(out, "%5s  %7s  %11s  %-24s  %-24s\n",
      "Event", "Time", "Owner", "Lock", "Caller");
  (void) fprintf(out, "---------------------------------"
      "----------------------------------------------\n");
 }

 for (i = 0; i < g_nrecs_used; i++) {

  lsp = sort_buf[i];

  if (lsp->ls_event >= LS_MAX_EVENTS || lsp->ls_count == 0)
   continue;

  (void) fprintf(out, "%2d  %10llu  %11p  %-24s  %-24s\n",
      lsp->ls_event, (unsigned long long)lsp->ls_time,
      (void *)lsp->ls_next,



      lsp->ls_lock,

      format_symbol(buf2, lsp->ls_caller, 0));

  if (rectype <= LS_STACK(0))
   continue;




  for (fr = 3; fr > 0; fr--)
   if (lsp->ls_stack[fr] == lsp->ls_caller)
    break;

  while (rectype > LS_STACK(fr) && lsp->ls_stack[fr] != 0) {
   (void) fprintf(out, "%53s  %-24s\n", "",
       format_symbol(buf, lsp->ls_stack[fr], 0));
   fr++;
  }
  (void) fprintf(out, "\n");
 }

 (void) fflush(out);
}
