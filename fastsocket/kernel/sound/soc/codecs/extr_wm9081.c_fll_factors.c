
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct _fll_div {unsigned int fll_clk_ref_div; unsigned int fll_outdiv; unsigned int n; unsigned int k; int fll_fratio; } ;
struct TYPE_3__ {unsigned int min; unsigned int max; unsigned int ratio; int fll_fratio; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 long long FIXED_FLL_SIZE ;
 int do_div (int,unsigned int) ;
 TYPE_1__* fll_fratios ;
 int pr_debug (char*,unsigned int,...) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int fll_factors(struct _fll_div *fll_div, unsigned int Fref,
         unsigned int Fout)
{
 u64 Kpart;
 unsigned int K, Ndiv, Nmod, target;
 unsigned int div;
 int i;


 div = 1;
 while ((Fref / div) > 13500000) {
  div *= 2;

  if (div > 8) {
   pr_err("Can't scale %dMHz input down to <=13.5MHz\n",
          Fref);
   return -EINVAL;
  }
 }
 fll_div->fll_clk_ref_div = div / 2;

 pr_debug("Fref=%u Fout=%u\n", Fref, Fout);


 Fref /= div;


 div = 0;
 target = Fout * 2;
 while (target < 90000000) {
  div++;
  target *= 2;
  if (div > 7) {
   pr_err("Unable to find FLL_OUTDIV for Fout=%uHz\n",
          Fout);
   return -EINVAL;
  }
 }
 fll_div->fll_outdiv = div;

 pr_debug("Fvco=%dHz\n", target);


 for (i = 0; i < ARRAY_SIZE(fll_fratios); i++) {
  if (fll_fratios[i].min <= Fref && Fref <= fll_fratios[i].max) {
   fll_div->fll_fratio = fll_fratios[i].fll_fratio;
   target /= fll_fratios[i].ratio;
   break;
  }
 }
 if (i == ARRAY_SIZE(fll_fratios)) {
  pr_err("Unable to find FLL_FRATIO for Fref=%uHz\n", Fref);
  return -EINVAL;
 }


 Ndiv = target / Fref;

 fll_div->n = Ndiv;
 Nmod = target % Fref;
 pr_debug("Nmod=%d\n", Nmod);


 Kpart = FIXED_FLL_SIZE * (long long)Nmod;

 do_div(Kpart, Fref);

 K = Kpart & 0xFFFFFFFF;

 if ((K % 10) >= 5)
  K += 5;


 fll_div->k = K / 10;

 pr_debug("N=%x K=%x FLL_FRATIO=%x FLL_OUTDIV=%x FLL_CLK_REF_DIV=%x\n",
   fll_div->n, fll_div->k,
   fll_div->fll_fratio, fll_div->fll_outdiv,
   fll_div->fll_clk_ref_div);

 return 0;
}
