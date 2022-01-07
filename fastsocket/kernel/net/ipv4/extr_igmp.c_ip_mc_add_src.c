
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_sf_list {scalar_t__ sf_crcount; struct ip_sf_list* sf_next; } ;
struct ip_mc_list {scalar_t__ multiaddr; size_t sfmode; scalar_t__* sfcount; int lock; struct ip_sf_list* sources; scalar_t__ crcount; struct in_device* interface; struct ip_mc_list* next; } ;
struct in_device {scalar_t__ mr_ifc_count; scalar_t__ mr_qrv; int mc_list_lock; struct ip_mc_list* mc_list; } ;
typedef scalar_t__ __be32 ;


 int ENODEV ;
 int ESRCH ;
 scalar_t__ IGMP_Unsolicited_Report_Count ;
 size_t MCAST_EXCLUDE ;
 size_t MCAST_INCLUDE ;
 int igmp_ifc_event (struct in_device*) ;
 int ip_mc_add1_src (struct ip_mc_list*,int,scalar_t__*,int) ;
 int ip_mc_del1_src (struct ip_mc_list*,int,scalar_t__*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sf_markstate (struct ip_mc_list*) ;
 scalar_t__ sf_setstate (struct ip_mc_list*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ip_mc_add_src(struct in_device *in_dev, __be32 *pmca, int sfmode,
    int sfcount, __be32 *psfsrc, int delta)
{
 struct ip_mc_list *pmc;
 int isexclude;
 int i, err;

 if (!in_dev)
  return -ENODEV;
 read_lock(&in_dev->mc_list_lock);
 for (pmc=in_dev->mc_list; pmc; pmc=pmc->next) {
  if (*pmca == pmc->multiaddr)
   break;
 }
 if (!pmc) {

  read_unlock(&in_dev->mc_list_lock);
  return -ESRCH;
 }
 spin_lock_bh(&pmc->lock);
 read_unlock(&in_dev->mc_list_lock);




 isexclude = pmc->sfmode == MCAST_EXCLUDE;
 if (!delta)
  pmc->sfcount[sfmode]++;
 err = 0;
 for (i=0; i<sfcount; i++) {
  err = ip_mc_add1_src(pmc, sfmode, &psfsrc[i], delta);
  if (err)
   break;
 }
 if (err) {
  int j;

  pmc->sfcount[sfmode]--;
  for (j=0; j<i; j++)
   (void) ip_mc_del1_src(pmc, sfmode, &psfsrc[i]);
 } else if (isexclude != (pmc->sfcount[MCAST_EXCLUDE] != 0)) {






  if (pmc->sfcount[MCAST_EXCLUDE])
   pmc->sfmode = MCAST_EXCLUDE;
  else if (pmc->sfcount[MCAST_INCLUDE])
   pmc->sfmode = MCAST_INCLUDE;
 }
 spin_unlock_bh(&pmc->lock);
 return err;
}
