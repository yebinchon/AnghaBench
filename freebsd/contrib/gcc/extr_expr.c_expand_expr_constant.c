
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum expand_modifier { ____Placeholder_expand_modifier } expand_modifier ;


 int EXPAND_INITIALIZER ;
 int output_constant_def (int ,int) ;
 int use_anchored_address (int ) ;

__attribute__((used)) static rtx
expand_expr_constant (tree exp, int defer, enum expand_modifier modifier)
{
  rtx mem;

  mem = output_constant_def (exp, defer);
  if (modifier != EXPAND_INITIALIZER)
    mem = use_anchored_address (mem);
  return mem;
}
