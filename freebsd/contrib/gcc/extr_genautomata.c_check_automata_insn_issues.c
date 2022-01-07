
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* automaton_t ;
typedef TYPE_4__* ainsn_t ;
struct TYPE_10__ {TYPE_3__* first_automaton; } ;
struct TYPE_9__ {TYPE_2__* insn_reserv_decl; struct TYPE_9__* next_same_reservs_insn; int arc_exists_p; scalar_t__ first_insn_with_same_reservs; struct TYPE_9__* next_ainsn; } ;
struct TYPE_8__ {TYPE_1__* corresponding_automaton_decl; TYPE_4__* ainsn_list; struct TYPE_8__* next_automaton; } ;
struct TYPE_7__ {char* name; } ;
struct TYPE_6__ {int name; } ;


 TYPE_5__* description ;
 int error (char*,char*,...) ;
 int w_flag ;
 int warning (int ,char*,char*,...) ;

__attribute__((used)) static void
check_automata_insn_issues (void)
{
  automaton_t automaton;
  ainsn_t ainsn, reserv_ainsn;

  for (automaton = description->first_automaton;
       automaton != ((void*)0);
       automaton = automaton->next_automaton)
    {
      for (ainsn = automaton->ainsn_list;
    ainsn != ((void*)0);
    ainsn = ainsn->next_ainsn)
 if (ainsn->first_insn_with_same_reservs && !ainsn->arc_exists_p)
   {
     for (reserv_ainsn = ainsn;
   reserv_ainsn != ((void*)0);
   reserv_ainsn = reserv_ainsn->next_same_reservs_insn)
       if (automaton->corresponding_automaton_decl != ((void*)0))
  {
    if (!w_flag)
      error ("Automaton `%s': Insn `%s' will never be issued",
      automaton->corresponding_automaton_decl->name,
      reserv_ainsn->insn_reserv_decl->name);
    else
      warning
        (0, "Automaton `%s': Insn `%s' will never be issued",
         automaton->corresponding_automaton_decl->name,
         reserv_ainsn->insn_reserv_decl->name);
  }
       else
  {
    if (!w_flag)
      error ("Insn `%s' will never be issued",
      reserv_ainsn->insn_reserv_decl->name);
    else
      warning (0, "Insn `%s' will never be issued",
        reserv_ainsn->insn_reserv_decl->name);
  }
   }
    }
}
