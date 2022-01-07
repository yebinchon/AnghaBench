
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int decl_t ;
struct TYPE_6__ {char const* name; } ;
struct TYPE_5__ {int mode; } ;


 TYPE_3__* DECL_AUTOMATON (TYPE_1__*) ;
 int automaton_decl_table ;
 int dm_automaton ;
 void* htab_find (int ,TYPE_1__*) ;
 TYPE_1__ work_automaton_decl ;

__attribute__((used)) static decl_t
find_automaton_decl (const char *name)
{
  void *entry;

  work_automaton_decl.mode = dm_automaton;
  DECL_AUTOMATON (&work_automaton_decl)->name = name;
  entry = htab_find (automaton_decl_table, &work_automaton_decl);
  return (decl_t) entry;
}
