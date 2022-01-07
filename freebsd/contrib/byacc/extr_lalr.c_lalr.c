
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WORDSIZE (int ) ;
 int build_relations () ;
 int compute_FOLLOWS () ;
 int compute_lookaheads () ;
 int initialize_F () ;
 int initialize_LA () ;
 int ntokens ;
 int set_accessing_symbol () ;
 int set_goto_map () ;
 int set_maxrhs () ;
 int set_reduction_table () ;
 int set_shift_table () ;
 int set_state_table () ;
 int tokensetsize ;

void
lalr(void)
{
    tokensetsize = WORDSIZE(ntokens);

    set_state_table();
    set_accessing_symbol();
    set_shift_table();
    set_reduction_table();
    set_maxrhs();
    initialize_LA();
    set_goto_map();
    initialize_F();
    build_relations();
    compute_FOLLOWS();
    compute_lookaheads();
}
