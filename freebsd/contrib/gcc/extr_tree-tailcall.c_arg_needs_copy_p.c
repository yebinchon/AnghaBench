
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int default_def (int ) ;
 int is_gimple_reg (int ) ;
 int var_ann (int ) ;

__attribute__((used)) static bool
arg_needs_copy_p (tree param)
{
  tree def;

  if (!is_gimple_reg (param) || !var_ann (param))
    return 0;


  def = default_def (param);
  if (!def)
    return 0;

  return 1;
}
