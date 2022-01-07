
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {scalar_t__* sf_count; struct ip6_sf_list* sf_next; int sf_crcount; scalar_t__ sf_oldin; int sf_addr; } ;
struct inet6_dev {int mc_qrv; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {int mca_flags; struct ip6_sf_list* mca_tomb; struct ip6_sf_list* mca_sources; struct inet6_dev* idev; } ;


 int ESRCH ;
 int MAF_NOREPORT ;
 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 int MLD_V1_SEEN (struct inet6_dev*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr*) ;
 int kfree (struct ip6_sf_list*) ;

__attribute__((used)) static int ip6_mc_del1_src(struct ifmcaddr6 *pmc, int sfmode,
 struct in6_addr *psfsrc)
{
 struct ip6_sf_list *psf, *psf_prev;
 int rv = 0;

 psf_prev = ((void*)0);
 for (psf=pmc->mca_sources; psf; psf=psf->sf_next) {
  if (ipv6_addr_equal(&psf->sf_addr, psfsrc))
   break;
  psf_prev = psf;
 }
 if (!psf || psf->sf_count[sfmode] == 0) {

  return -ESRCH;
 }
 psf->sf_count[sfmode]--;
 if (!psf->sf_count[MCAST_INCLUDE] && !psf->sf_count[MCAST_EXCLUDE]) {
  struct inet6_dev *idev = pmc->idev;


  if (psf_prev)
   psf_prev->sf_next = psf->sf_next;
  else
   pmc->mca_sources = psf->sf_next;
  if (psf->sf_oldin && !(pmc->mca_flags & MAF_NOREPORT) &&
      !MLD_V1_SEEN(idev)) {
   psf->sf_crcount = idev->mc_qrv;
   psf->sf_next = pmc->mca_tomb;
   pmc->mca_tomb = psf;
   rv = 1;
  } else
   kfree(psf);
 }
 return rv;
}
