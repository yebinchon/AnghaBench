
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int ) ;
 int NO_SPACE (int ) ;
 scalar_t__ RRtotal ;
 scalar_t__ SRtotal ;
 int TMALLOC (int ,int) ;
 int Value_t ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 int log_conflicts () ;
 int log_unused () ;
 int nrules ;
 int nstates ;
 int nsyms ;
 int ntokens ;
 int null_rules ;
 scalar_t__ nunused ;
 int nvars ;
 int print_state (int) ;
 char** symbol_name ;
 int* symbol_value ;
 int verbose_file ;
 int vflag ;

void
verbose(void)
{
    int i;

    if (!vflag)
 return;

    null_rules = TMALLOC(Value_t, nrules);
    NO_SPACE(null_rules);

    fprintf(verbose_file, "\f\n");
    for (i = 0; i < nstates; i++)
 print_state(i);
    FREE(null_rules);

    if (nunused)
 log_unused();
    if (SRtotal || RRtotal)
 log_conflicts();

    fprintf(verbose_file, "\n\n%d terminals, %d nonterminals\n", ntokens,
     nvars);
    fprintf(verbose_file, "%d grammar rules, %d states\n", nrules - 2, nstates);
}
