
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hashval_t ;
typedef TYPE_1__* decl_t ;
struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_4__ {scalar_t__ mode; } ;


 TYPE_2__* DECL_AUTOMATON (TYPE_1__* const) ;
 scalar_t__ dm_automaton ;
 int gcc_assert (int) ;
 int string_hash (scalar_t__) ;

__attribute__((used)) static hashval_t
automaton_decl_hash (const void *automaton_decl)
{
  const decl_t decl = (decl_t) automaton_decl;

  gcc_assert (decl->mode != dm_automaton
       || DECL_AUTOMATON (decl)->name);
  return string_hash (DECL_AUTOMATON (decl)->name);
}
