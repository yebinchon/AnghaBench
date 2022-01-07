
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int g450_isplllocked (struct matrox_fb_info const*,int ) ;
 int g450_setpll (struct matrox_fb_info const*,unsigned int,unsigned int) ;

__attribute__((used)) static int g450_testpll(const struct matrox_fb_info *minfo, unsigned int mnp,
   unsigned int pll)
{
 return g450_isplllocked(minfo, g450_setpll(minfo, mnp, pll));
}
