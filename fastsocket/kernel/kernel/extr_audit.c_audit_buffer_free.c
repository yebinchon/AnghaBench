
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int list; scalar_t__ skb; } ;


 scalar_t__ AUDIT_MAXFREE ;
 int audit_freelist ;
 scalar_t__ audit_freelist_count ;
 int audit_freelist_lock ;
 int kfree (struct audit_buffer*) ;
 int kfree_skb (scalar_t__) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void audit_buffer_free(struct audit_buffer *ab)
{
 unsigned long flags;

 if (!ab)
  return;

 if (ab->skb)
  kfree_skb(ab->skb);

 spin_lock_irqsave(&audit_freelist_lock, flags);
 if (audit_freelist_count > AUDIT_MAXFREE)
  kfree(ab);
 else {
  audit_freelist_count++;
  list_add(&ab->list, &audit_freelist);
 }
 spin_unlock_irqrestore(&audit_freelist_lock, flags);
}
