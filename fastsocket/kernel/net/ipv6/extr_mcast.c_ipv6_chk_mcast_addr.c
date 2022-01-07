
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ip6_sf_list {scalar_t__* sf_count; int sf_addr; struct ip6_sf_list* sf_next; } ;
struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {scalar_t__* mca_sfcount; int mca_lock; struct ip6_sf_list* mca_sources; int mca_addr; struct ifmcaddr6* next; } ;


 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int ipv6_addr_any (struct in6_addr const*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr const*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ipv6_chk_mcast_addr(struct net_device *dev, const struct in6_addr *group,
   const struct in6_addr *src_addr)
{
 struct inet6_dev *idev;
 struct ifmcaddr6 *mc;
 int rv = 0;

 idev = in6_dev_get(dev);
 if (idev) {
  read_lock_bh(&idev->lock);
  for (mc = idev->mc_list; mc; mc=mc->next) {
   if (ipv6_addr_equal(&mc->mca_addr, group))
    break;
  }
  if (mc) {
   if (src_addr && !ipv6_addr_any(src_addr)) {
    struct ip6_sf_list *psf;

    spin_lock_bh(&mc->mca_lock);
    for (psf=mc->mca_sources;psf;psf=psf->sf_next) {
     if (ipv6_addr_equal(&psf->sf_addr, src_addr))
      break;
    }
    if (psf)
     rv = psf->sf_count[MCAST_INCLUDE] ||
      psf->sf_count[MCAST_EXCLUDE] !=
      mc->mca_sfcount[MCAST_EXCLUDE];
    else
     rv = mc->mca_sfcount[MCAST_EXCLUDE] !=0;
    spin_unlock_bh(&mc->mca_lock);
   } else
    rv = 1;
  }
  read_unlock_bh(&idev->lock);
  in6_dev_put(idev);
 }
 return rv;
}
