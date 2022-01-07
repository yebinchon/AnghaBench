
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mld2_grec {int dummy; } ;
struct ifmcaddr6 {int dummy; } ;


 int mld_scount (struct ifmcaddr6*,int,int,int) ;

__attribute__((used)) static int grec_size(struct ifmcaddr6 *pmc, int type, int gdel, int sdel)
{
 return sizeof(struct mld2_grec) + 16 * mld_scount(pmc,type,gdel,sdel);
}
