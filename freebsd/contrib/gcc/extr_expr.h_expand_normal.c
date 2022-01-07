
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int EXPAND_NORMAL ;
 int NULL_RTX ;
 int VOIDmode ;
 int expand_expr_real (int ,int ,int ,int ,int *) ;

__attribute__((used)) static inline rtx
expand_normal (tree exp)
{
  return expand_expr_real (exp, NULL_RTX, VOIDmode, EXPAND_NORMAL, ((void*)0));
}
