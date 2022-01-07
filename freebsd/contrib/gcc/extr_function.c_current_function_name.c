
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int decl; } ;
struct TYPE_3__ {char const* (* decl_printable_name ) (int ,int) ;} ;


 TYPE_2__* cfun ;
 TYPE_1__ lang_hooks ;
 char const* stub1 (int ,int) ;

const char *
current_function_name (void)
{
  return lang_hooks.decl_printable_name (cfun->decl, 2);
}
