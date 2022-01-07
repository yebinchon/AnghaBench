
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct inet6_dev {int lock; struct ifmcaddr6* mc_list; int mc_lock; struct ifmcaddr6* mc_tomb; } ;
struct ifmcaddr6 {size_t mca_sfmode; scalar_t__ mca_crcount; int mca_lock; scalar_t__* mca_sfcount; struct ifmcaddr6* next; int idev; int mca_sources; int mca_tomb; } ;


 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 int MLD2_ALLOW_NEW_SOURCES ;
 int MLD2_BLOCK_OLD_SOURCES ;
 int MLD2_CHANGE_TO_EXCLUDE ;
 int MLD2_CHANGE_TO_INCLUDE ;
 struct sk_buff* add_grec (struct sk_buff*,struct ifmcaddr6*,int,int,int) ;
 int in6_dev_put (int ) ;
 int kfree (struct ifmcaddr6*) ;
 int mld_clear_zeros (int *) ;
 int mld_sendpack (struct sk_buff*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void mld_send_cr(struct inet6_dev *idev)
{
 struct ifmcaddr6 *pmc, *pmc_prev, *pmc_next;
 struct sk_buff *skb = ((void*)0);
 int type, dtype;

 read_lock_bh(&idev->lock);
 write_lock_bh(&idev->mc_lock);


 pmc_prev = ((void*)0);
 for (pmc=idev->mc_tomb; pmc; pmc=pmc_next) {
  pmc_next = pmc->next;
  if (pmc->mca_sfmode == MCAST_INCLUDE) {
   type = MLD2_BLOCK_OLD_SOURCES;
   dtype = MLD2_BLOCK_OLD_SOURCES;
   skb = add_grec(skb, pmc, type, 1, 0);
   skb = add_grec(skb, pmc, dtype, 1, 1);
  }
  if (pmc->mca_crcount) {
   if (pmc->mca_sfmode == MCAST_EXCLUDE) {
    type = MLD2_CHANGE_TO_INCLUDE;
    skb = add_grec(skb, pmc, type, 1, 0);
   }
   pmc->mca_crcount--;
   if (pmc->mca_crcount == 0) {
    mld_clear_zeros(&pmc->mca_tomb);
    mld_clear_zeros(&pmc->mca_sources);
   }
  }
  if (pmc->mca_crcount == 0 && !pmc->mca_tomb &&
      !pmc->mca_sources) {
   if (pmc_prev)
    pmc_prev->next = pmc_next;
   else
    idev->mc_tomb = pmc_next;
   in6_dev_put(pmc->idev);
   kfree(pmc);
  } else
   pmc_prev = pmc;
 }
 write_unlock_bh(&idev->mc_lock);


 for (pmc=idev->mc_list; pmc; pmc=pmc->next) {
  spin_lock_bh(&pmc->mca_lock);
  if (pmc->mca_sfcount[MCAST_EXCLUDE]) {
   type = MLD2_BLOCK_OLD_SOURCES;
   dtype = MLD2_ALLOW_NEW_SOURCES;
  } else {
   type = MLD2_ALLOW_NEW_SOURCES;
   dtype = MLD2_BLOCK_OLD_SOURCES;
  }
  skb = add_grec(skb, pmc, type, 0, 0);
  skb = add_grec(skb, pmc, dtype, 0, 1);


  if (pmc->mca_crcount) {
   if (pmc->mca_sfmode == MCAST_EXCLUDE)
    type = MLD2_CHANGE_TO_EXCLUDE;
   else
    type = MLD2_CHANGE_TO_INCLUDE;
   skb = add_grec(skb, pmc, type, 0, 0);
   pmc->mca_crcount--;
  }
  spin_unlock_bh(&pmc->mca_lock);
 }
 read_unlock_bh(&idev->lock);
 if (!skb)
  return;
 (void) mld_sendpack(skb);
}
