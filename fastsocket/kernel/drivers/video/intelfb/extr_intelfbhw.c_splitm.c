
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_min_max {int min_m1; int max_m1; int min_m2; int max_m2; } ;


 struct pll_min_max* plls ;

__attribute__((used)) static int splitm(int index, unsigned int m, unsigned int *retm1,
    unsigned int *retm2)
{
 int m1, m2;
 int testm;
 struct pll_min_max *pll = &plls[index];


 for (m1 = pll->min_m1; m1 < pll->max_m1 + 1; m1++) {
  for (m2 = pll->min_m2; m2 < pll->max_m2 + 1; m2++) {
   testm = (5 * (m1 + 2)) + (m2 + 2);
   if (testm == m) {
    *retm1 = (unsigned int)m1;
    *retm2 = (unsigned int)m2;
    return 0;
   }
  }
 }
 return 1;
}
