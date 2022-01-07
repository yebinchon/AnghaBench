
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int mtu; } ;
struct mld2_report {scalar_t__ mld2r_ngrec; } ;
struct mld2_grec {void* grec_nsrcs; } ;
struct in6_addr {int dummy; } ;
struct ip6_sf_list {scalar_t__ sf_crcount; struct ip6_sf_list* sf_next; struct in6_addr sf_addr; scalar_t__ sf_gsresp; } ;
struct ifmcaddr6 {int mca_flags; scalar_t__ mca_crcount; struct ip6_sf_list* mca_sources; struct ip6_sf_list* mca_tomb; TYPE_1__* idev; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int AVAILABLE (struct sk_buff*) ;
 int MAF_GSQUERY ;
 int MAF_NOREPORT ;
 int MLD2_ALLOW_NEW_SOURCES ;
 int MLD2_BLOCK_OLD_SOURCES ;
 int MLD2_CHANGE_TO_EXCLUDE ;
 int MLD2_MODE_IS_EXCLUDE ;
 int MLD2_MODE_IS_INCLUDE ;
 struct sk_buff* add_grhead (struct sk_buff*,struct ifmcaddr6*,int,struct mld2_grec**) ;
 int grec_size (struct ifmcaddr6*,int,int,int) ;
 void* htons (int) ;
 int is_in (struct ifmcaddr6*,struct ip6_sf_list*,int,int,int) ;
 int kfree (struct ip6_sf_list*) ;
 struct sk_buff* mld_newpack (struct net_device*,int ) ;
 int mld_sendpack (struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *add_grec(struct sk_buff *skb, struct ifmcaddr6 *pmc,
 int type, int gdeleted, int sdeleted)
{
 struct net_device *dev = pmc->idev->dev;
 struct mld2_report *pmr;
 struct mld2_grec *pgr = ((void*)0);
 struct ip6_sf_list *psf, *psf_next, *psf_prev, **psf_list;
 int scount, stotal, first, isquery, truncate;

 if (pmc->mca_flags & MAF_NOREPORT)
  return skb;

 isquery = type == MLD2_MODE_IS_INCLUDE ||
    type == MLD2_MODE_IS_EXCLUDE;
 truncate = type == MLD2_MODE_IS_EXCLUDE ||
      type == MLD2_CHANGE_TO_EXCLUDE;

 stotal = scount = 0;

 psf_list = sdeleted ? &pmc->mca_tomb : &pmc->mca_sources;

 if (!*psf_list)
  goto empty_source;

 pmr = skb ? (struct mld2_report *)skb_transport_header(skb) : ((void*)0);


 if (truncate) {
  if (pmr && pmr->mld2r_ngrec &&
      AVAILABLE(skb) < grec_size(pmc, type, gdeleted, sdeleted)) {
   if (skb)
    mld_sendpack(skb);
   skb = mld_newpack(dev, dev->mtu);
  }
 }
 first = 1;
 psf_prev = ((void*)0);
 for (psf=*psf_list; psf; psf=psf_next) {
  struct in6_addr *psrc;

  psf_next = psf->sf_next;

  if (!is_in(pmc, psf, type, gdeleted, sdeleted)) {
   psf_prev = psf;
   continue;
  }


  if (isquery)
   psf->sf_gsresp = 0;

  if (AVAILABLE(skb) < sizeof(*psrc) +
      first*sizeof(struct mld2_grec)) {
   if (truncate && !first)
    break;
   if (pgr)
    pgr->grec_nsrcs = htons(scount);
   if (skb)
    mld_sendpack(skb);
   skb = mld_newpack(dev, dev->mtu);
   first = 1;
   scount = 0;
  }
  if (first) {
   skb = add_grhead(skb, pmc, type, &pgr);
   first = 0;
  }
  if (!skb)
   return ((void*)0);
  psrc = (struct in6_addr *)skb_put(skb, sizeof(*psrc));
  *psrc = psf->sf_addr;
  scount++; stotal++;
  if ((type == MLD2_ALLOW_NEW_SOURCES ||
       type == MLD2_BLOCK_OLD_SOURCES) && psf->sf_crcount) {
   psf->sf_crcount--;
   if ((sdeleted || gdeleted) && psf->sf_crcount == 0) {
    if (psf_prev)
     psf_prev->sf_next = psf->sf_next;
    else
     *psf_list = psf->sf_next;
    kfree(psf);
    continue;
   }
  }
  psf_prev = psf;
 }

empty_source:
 if (!stotal) {
  if (type == MLD2_ALLOW_NEW_SOURCES ||
      type == MLD2_BLOCK_OLD_SOURCES)
   return skb;
  if (pmc->mca_crcount || isquery) {

   if (skb && AVAILABLE(skb) < sizeof(struct mld2_grec)) {
    mld_sendpack(skb);
    skb = ((void*)0);
   }
   skb = add_grhead(skb, pmc, type, &pgr);
  }
 }
 if (pgr)
  pgr->grec_nsrcs = htons(scount);

 if (isquery)
  pmc->mca_flags &= ~MAF_GSQUERY;
 return skb;
}
