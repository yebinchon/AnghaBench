
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {scalar_t__ (* expand_decl ) (int ) ;} ;


 int DECL_ORIGIN (int ) ;
 scalar_t__ TREE_ASM_WRITTEN (int ) ;
 scalar_t__ flag_unit_at_a_time ;
 TYPE_1__ lang_hooks ;
 int rest_of_decl_compilation (int ,int ,int ) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static void
expand_one_static_var (tree var)
{


  if (flag_unit_at_a_time)
    return;


  var = DECL_ORIGIN (var);


  if (TREE_ASM_WRITTEN (var))
    return;



  if (lang_hooks.expand_decl (var))
    return;


  rest_of_decl_compilation (var, 0, 0);
}
