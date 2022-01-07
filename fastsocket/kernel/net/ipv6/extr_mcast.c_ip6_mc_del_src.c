
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_sf_list {scalar_t__ sf_crcount; struct ip6_sf_list* sf_next; } ;
struct inet6_dev {int lock; int mc_ifc_count; int mc_qrv; struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__* mca_sfcount; size_t mca_sfmode; int mca_lock; int idev; struct ip6_sf_list* mca_sources; int mca_crcount; int mca_addr; struct ifmcaddr6* next; } ;


 int EINVAL ;
 int ENODEV ;
 int ESRCH ;
 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 int ip6_mc_del1_src (struct ifmcaddr6*,int,struct in6_addr*) ;
 scalar_t__ ipv6_addr_equal (struct in6_addr*,int *) ;
 int mld_ifc_event (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sf_markstate (struct ifmcaddr6*) ;
 scalar_t__ sf_setstate (struct ifmcaddr6*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ip6_mc_del_src(struct inet6_dev *idev, struct in6_addr *pmca,
     int sfmode, int sfcount, struct in6_addr *psfsrc,
     int delta)
{
 struct ifmcaddr6 *pmc;
 int changerec = 0;
 int i, err;

 if (!idev)
  return -ENODEV;
 read_lock_bh(&idev->lock);
 for (pmc=idev->mc_list; pmc; pmc=pmc->next) {
  if (ipv6_addr_equal(pmca, &pmc->mca_addr))
   break;
 }
 if (!pmc) {

  read_unlock_bh(&idev->lock);
  return -ESRCH;
 }
 spin_lock_bh(&pmc->mca_lock);
 sf_markstate(pmc);
 if (!delta) {
  if (!pmc->mca_sfcount[sfmode]) {
   spin_unlock_bh(&pmc->mca_lock);
   read_unlock_bh(&idev->lock);
   return -EINVAL;
  }
  pmc->mca_sfcount[sfmode]--;
 }
 err = 0;
 for (i=0; i<sfcount; i++) {
  int rv = ip6_mc_del1_src(pmc, sfmode, &psfsrc[i]);

  changerec |= rv > 0;
  if (!err && rv < 0)
   err = rv;
 }
 if (pmc->mca_sfmode == MCAST_EXCLUDE &&
     pmc->mca_sfcount[MCAST_EXCLUDE] == 0 &&
     pmc->mca_sfcount[MCAST_INCLUDE]) {
  struct ip6_sf_list *psf;


  pmc->mca_sfmode = MCAST_INCLUDE;
  pmc->mca_crcount = idev->mc_qrv;
  idev->mc_ifc_count = pmc->mca_crcount;
  for (psf=pmc->mca_sources; psf; psf = psf->sf_next)
   psf->sf_crcount = 0;
  mld_ifc_event(pmc->idev);
 } else if (sf_setstate(pmc) || changerec)
  mld_ifc_event(pmc->idev);
 spin_unlock_bh(&pmc->mca_lock);
 read_unlock_bh(&idev->lock);
 return err;
}
