
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pll; } ;
struct matrox_fb_info {TYPE_1__ features; } ;


 int matroxfb_PLL_calcclock (int *,unsigned int,unsigned int,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static inline int PLL_calcclock(const struct matrox_fb_info *minfo,
    unsigned int freq, unsigned int fmax,
    unsigned int *in, unsigned int *feed,
    unsigned int *post)
{
 return matroxfb_PLL_calcclock(&minfo->features.pll, freq, fmax, in, feed, post);
}
