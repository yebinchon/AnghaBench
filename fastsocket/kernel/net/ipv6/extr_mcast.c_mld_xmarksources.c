
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {scalar_t__* sf_count; int sf_addr; struct ip6_sf_list* sf_next; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__* mca_sfcount; int mca_flags; struct ip6_sf_list* mca_sources; } ;


 int MAF_GSQUERY ;
 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 scalar_t__ ipv6_addr_equal (struct in6_addr*,int *) ;

__attribute__((used)) static int mld_xmarksources(struct ifmcaddr6 *pmc, int nsrcs,
 struct in6_addr *srcs)
{
 struct ip6_sf_list *psf;
 int i, scount;

 scount = 0;
 for (psf=pmc->mca_sources; psf; psf=psf->sf_next) {
  if (scount == nsrcs)
   break;
  for (i=0; i<nsrcs; i++) {

   if (pmc->mca_sfcount[MCAST_INCLUDE] ||
       pmc->mca_sfcount[MCAST_EXCLUDE] !=
       psf->sf_count[MCAST_EXCLUDE])
    continue;
   if (ipv6_addr_equal(&srcs[i], &psf->sf_addr)) {
    scount++;
    break;
   }
  }
 }
 pmc->mca_flags &= ~MAF_GSQUERY;
 if (scount == nsrcs)
  return 0;
 return 1;
}
