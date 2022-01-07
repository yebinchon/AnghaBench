
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* RRconflicts ;
 scalar_t__* SRconflicts ;
 int fprintf (int ,char*,...) ;
 int print_actions (int) ;
 int print_conflicts (int) ;
 int print_core (int) ;
 int print_nulls (int) ;
 int verbose_file ;

__attribute__((used)) static void
print_state(int state)
{
    if (state)
 fprintf(verbose_file, "\n\n");
    if (SRconflicts[state] || RRconflicts[state])
 print_conflicts(state);
    fprintf(verbose_file, "state %d\n", state);
    print_core(state);
    print_nulls(state);
    print_actions(state);
}
