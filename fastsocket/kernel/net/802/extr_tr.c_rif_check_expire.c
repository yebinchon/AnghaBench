
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rif_cache {int last_used; struct rif_cache* next; } ;


 int RIF_TABLE_SIZE ;
 int jiffies ;
 int kfree (struct rif_cache*) ;
 int mod_timer (int *,unsigned long) ;
 int rif_lock ;
 struct rif_cache** rif_table ;
 int rif_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysctl_tr_rif_timeout ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 scalar_t__ time_before_eq (unsigned long,int) ;

__attribute__((used)) static void rif_check_expire(unsigned long dummy)
{
 int i;
 unsigned long flags, next_interval = jiffies + sysctl_tr_rif_timeout/2;

 spin_lock_irqsave(&rif_lock, flags);

 for(i =0; i < RIF_TABLE_SIZE; i++) {
  struct rif_cache *entry, **pentry;

  pentry = rif_table+i;
  while((entry=*pentry) != ((void*)0)) {
   unsigned long expires
    = entry->last_used + sysctl_tr_rif_timeout;

   if (time_before_eq(expires, jiffies)) {
    *pentry = entry->next;
    kfree(entry);
   } else {
    pentry = &entry->next;

    if (time_before(expires, next_interval))
     next_interval = expires;
   }
  }
 }

 spin_unlock_irqrestore(&rif_lock, flags);

 mod_timer(&rif_timer, next_interval);

}
