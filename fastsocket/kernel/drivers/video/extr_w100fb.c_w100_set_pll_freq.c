
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w100fb_par {struct w100_pll_info* pll_table; } ;
struct w100_pll_info {int freq; } ;


 int w100_pll_set_clk (struct w100_pll_info*) ;

__attribute__((used)) static int w100_set_pll_freq(struct w100fb_par *par, unsigned int freq)
{
 struct w100_pll_info *pll = par->pll_table;

 do {
  if (freq == pll->freq) {
   return w100_pll_set_clk(pll);
  }
  pll++;
 } while(pll->freq);
 return 0;
}
