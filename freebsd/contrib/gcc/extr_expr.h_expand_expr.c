
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum expand_modifier { ____Placeholder_expand_modifier } expand_modifier ;


 int expand_expr_real (int ,int ,int,int,int *) ;

__attribute__((used)) static inline rtx
expand_expr (tree exp, rtx target, enum machine_mode mode,
      enum expand_modifier modifier)
{
  return expand_expr_real (exp, target, mode, modifier, ((void*)0));
}
