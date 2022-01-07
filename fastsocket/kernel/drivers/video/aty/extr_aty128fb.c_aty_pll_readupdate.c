
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aty128fb_par {int dummy; } ;


 int PPLL_ATOMIC_UPDATE_R ;
 int PPLL_REF_DIV ;
 int aty_ld_pll (int ) ;

__attribute__((used)) static int aty_pll_readupdate(const struct aty128fb_par *par)
{
 return !(aty_ld_pll(PPLL_REF_DIV) & PPLL_ATOMIC_UPDATE_R);
}
