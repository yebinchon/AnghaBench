
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int (* type_decl ) (int ,int) ;} ;


 int TV_SYMOUT ;
 int TYPE_STUB_DECL (int ) ;
 TYPE_1__* debug_hooks ;
 scalar_t__ errorcount ;
 scalar_t__ sorrycount ;
 int stub1 (int ,int) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

void
rest_of_type_compilation (tree type, int toplev)
{


  if (errorcount != 0 || sorrycount != 0)
    return;

  timevar_push (TV_SYMOUT);
  debug_hooks->type_decl (TYPE_STUB_DECL (type), !toplev);
  timevar_pop (TV_SYMOUT);
}
