
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_reader_bin {int fetch_lock; scalar_t__ b_read; int b_lock; int b_out; } ;
struct mon_bin_hdr {scalar_t__ len_cap; } ;


 struct mon_bin_hdr* MON_OFF2HDR (struct mon_reader_bin*,int ) ;
 scalar_t__ MON_RING_EMPTY (struct mon_reader_bin*) ;
 scalar_t__ PKT_SIZE ;
 int mon_buff_area_free (struct mon_reader_bin*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mon_bin_flush(struct mon_reader_bin *rp, unsigned nevents)
{
 unsigned long flags;
 struct mon_bin_hdr *ep;
 int i;

 mutex_lock(&rp->fetch_lock);
 spin_lock_irqsave(&rp->b_lock, flags);
 for (i = 0; i < nevents; ++i) {
  if (MON_RING_EMPTY(rp))
   break;

  ep = MON_OFF2HDR(rp, rp->b_out);
  mon_buff_area_free(rp, PKT_SIZE + ep->len_cap);
 }
 spin_unlock_irqrestore(&rp->b_lock, flags);
 rp->b_read = 0;
 mutex_unlock(&rp->fetch_lock);
 return i;
}
