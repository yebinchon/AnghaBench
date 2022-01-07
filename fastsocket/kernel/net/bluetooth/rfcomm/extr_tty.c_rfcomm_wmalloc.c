
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rfcomm_dev {int dlc; int wmem_alloc; } ;
typedef int gfp_t ;


 struct sk_buff* alloc_skb (unsigned long,int ) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ rfcomm_room (int ) ;
 int rfcomm_set_owner_w (struct sk_buff*,struct rfcomm_dev*) ;

__attribute__((used)) static struct sk_buff *rfcomm_wmalloc(struct rfcomm_dev *dev, unsigned long size, gfp_t priority)
{
 if (atomic_read(&dev->wmem_alloc) < rfcomm_room(dev->dlc)) {
  struct sk_buff *skb = alloc_skb(size, priority);
  if (skb) {
   rfcomm_set_owner_w(skb, dev);
   return skb;
  }
 }
 return ((void*)0);
}
