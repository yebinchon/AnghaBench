
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* decl_t ;
struct TYPE_11__ {TYPE_2__* automaton_decl; scalar_t__ corresponding_automaton_num; } ;
struct TYPE_10__ {int decls_num; TYPE_3__** decls; } ;
struct TYPE_9__ {scalar_t__ mode; } ;
struct TYPE_8__ {TYPE_1__* corresponding_automaton; } ;
struct TYPE_7__ {scalar_t__ automaton_order_num; } ;


 TYPE_5__* DECL_UNIT (TYPE_3__*) ;
 TYPE_4__* description ;
 scalar_t__ dm_unit ;

__attribute__((used)) static void
units_to_automata_distr (void)
{
  decl_t decl;
  int i;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_unit)
 {
   if (DECL_UNIT (decl)->automaton_decl == ((void*)0)
       || (DECL_UNIT (decl)->automaton_decl->corresponding_automaton
    == ((void*)0)))

     DECL_UNIT (decl)->corresponding_automaton_num = 0;
   else
     DECL_UNIT (decl)->corresponding_automaton_num
       = (DECL_UNIT (decl)->automaton_decl
                 ->corresponding_automaton->automaton_order_num);
 }
    }
}
