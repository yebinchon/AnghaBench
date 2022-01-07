
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ class; size_t index; } ;
typedef TYPE_1__ bucket ;


 scalar_t__ NONTERM ;
 scalar_t__ TERM ;
 int TOKEN ;
 int UNDEFINED ;
 int expand_rules () ;
 size_t maxrules ;
 size_t nrules ;
 TYPE_1__** plhs ;
 int * rassoc ;
 int * rprec ;
 int terminal_lhs (int) ;

__attribute__((used)) static void
start_rule(bucket *bp, int s_lineno)
{
    if (bp->class == TERM)
 terminal_lhs(s_lineno);
    bp->class = NONTERM;
    if (!bp->index)
 bp->index = nrules;
    if (nrules >= maxrules)
 expand_rules();
    plhs[nrules] = bp;
    rprec[nrules] = UNDEFINED;
    rassoc[nrules] = TOKEN;
}
