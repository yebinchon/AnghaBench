
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* decl_t ;
struct TYPE_7__ {int name; int automaton_is_used; } ;
struct TYPE_6__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_5__ {scalar_t__ mode; } ;


 TYPE_3__* DECL_AUTOMATON (TYPE_1__*) ;
 TYPE_2__* description ;
 scalar_t__ dm_automaton ;
 int error (char*,int ) ;
 int w_flag ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static void
check_automaton_usage (void)
{
  decl_t decl;
  int i;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_automaton
   && !DECL_AUTOMATON (decl)->automaton_is_used)
 {
   if (!w_flag)
     error ("automaton `%s' is not used", DECL_AUTOMATON (decl)->name);
   else
     warning (0, "automaton `%s' is not used",
       DECL_AUTOMATON (decl)->name);
 }
    }
}
