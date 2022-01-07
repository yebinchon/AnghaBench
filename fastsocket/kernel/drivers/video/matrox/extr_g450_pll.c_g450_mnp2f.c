
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int g450_mnp2vco (struct matrox_fb_info const*,unsigned int) ;
 unsigned int g450_vco2f (unsigned int,int ) ;

unsigned int g450_mnp2f(const struct matrox_fb_info *minfo, unsigned int mnp)
{
 return g450_vco2f(mnp, g450_mnp2vco(minfo, mnp));
}
