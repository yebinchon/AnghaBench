
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expr {scalar_t__ hash; int expr; } ;


 int exp_equiv_p (int ,int ,int ,int) ;
 int gcc_assert (int) ;

__attribute__((used)) static int
expr_equiv_p (const void *exp1p, const void *exp2p)
{
  struct expr *exp1 = (struct expr *) exp1p;
  struct expr *exp2 = (struct expr *) exp2p;
  int equiv_p = exp_equiv_p (exp1->expr, exp2->expr, 0, 1);

  gcc_assert (!equiv_p || exp1->hash == exp2->hash);
  return equiv_p;
}
