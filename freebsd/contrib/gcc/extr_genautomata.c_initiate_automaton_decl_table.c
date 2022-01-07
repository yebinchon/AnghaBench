
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int htab_del ;
struct TYPE_2__ {int mode; } ;


 int automaton_decl_eq_p ;
 int automaton_decl_hash ;
 int automaton_decl_table ;
 int dm_automaton ;
 int htab_create (int,int ,int ,int ) ;
 TYPE_1__ work_automaton_decl ;

__attribute__((used)) static void
initiate_automaton_decl_table (void)
{
  work_automaton_decl.mode = dm_automaton;
  automaton_decl_table = htab_create (10, automaton_decl_hash,
          automaton_decl_eq_p, (htab_del) 0);
}
