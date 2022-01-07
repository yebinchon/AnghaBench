
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _pll_div {int pre_div; unsigned int n; unsigned int k; } ;


 int EINVAL ;
 long long FIXED_PLL_SIZE ;
 int do_div (unsigned long long,unsigned int) ;
 int pr_debug (char*,unsigned int,unsigned int,...) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int pll_factors(unsigned int source, unsigned int target,
         struct _pll_div *pll_div)
{
 unsigned long long Kpart;
 unsigned int K, Ndiv, Nmod;

 pr_debug("WM8960 PLL: setting %dHz->%dHz\n", source, target);


 target *= 4;

 Ndiv = target / source;
 if (Ndiv < 6) {
  source >>= 1;
  pll_div->pre_div = 1;
  Ndiv = target / source;
 } else
  pll_div->pre_div = 0;

 if ((Ndiv < 6) || (Ndiv > 12)) {
  pr_err("WM8960 PLL: Unsupported N=%d\n", Ndiv);
  return -EINVAL;
 }

 pll_div->n = Ndiv;
 Nmod = target % source;
 Kpart = FIXED_PLL_SIZE * (long long)Nmod;

 do_div(Kpart, source);

 K = Kpart & 0xFFFFFFFF;


 if ((K % 10) >= 5)
  K += 5;


 K /= 10;

 pll_div->k = K;

 pr_debug("WM8960 PLL: N=%x K=%x pre_div=%d\n",
   pll_div->n, pll_div->k, pll_div->pre_div);

 return 0;
}
