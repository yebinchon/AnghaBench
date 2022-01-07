
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {struct expr* next_same_hash; int expr; } ;


 unsigned int REGNO (int ) ;
 int SET_DEST (int ) ;

__attribute__((used)) static struct expr *
next_set (unsigned int regno, struct expr *expr)
{
  do
    expr = expr->next_same_hash;
  while (expr && REGNO (SET_DEST (expr->expr)) != regno);

  return expr;
}
