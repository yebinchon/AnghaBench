
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {int nelts; } ;


 int EXP_ELEM_TO_BYTES (int) ;
 scalar_t__ alloca (int) ;
 int memcpy (struct expression*,struct expression*,int) ;
 int prefixify_subexp (struct expression*,struct expression*,int,int) ;

__attribute__((used)) static void
prefixify_expression (struct expression *expr)
{
  int len =
  sizeof (struct expression) + EXP_ELEM_TO_BYTES (expr->nelts);
  struct expression *temp;
  int inpos = expr->nelts, outpos = 0;

  temp = (struct expression *) alloca (len);


  memcpy (temp, expr, len);

  prefixify_subexp (temp, expr, inpos, outpos);
}
