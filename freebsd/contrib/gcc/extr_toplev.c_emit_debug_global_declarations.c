
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int (* global_decl ) (int ) ;} ;


 int TV_SYMOUT ;
 TYPE_1__* debug_hooks ;
 scalar_t__ errorcount ;
 scalar_t__ sorrycount ;
 int stub1 (int ) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

void
emit_debug_global_declarations (tree *vec, int len)
{
  int i;


  if (errorcount != 0 || sorrycount != 0)
    return;

  timevar_push (TV_SYMOUT);
  for (i = 0; i < len; i++)
    debug_hooks->global_decl (vec[i]);
  timevar_pop (TV_SYMOUT);
}
