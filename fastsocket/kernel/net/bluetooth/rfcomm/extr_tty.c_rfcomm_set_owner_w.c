
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int destructor; void* sk; int truesize; } ;
struct rfcomm_dev {int wmem_alloc; } ;


 int atomic_add (int ,int *) ;
 int rfcomm_dev_hold (struct rfcomm_dev*) ;
 int rfcomm_wfree ;

__attribute__((used)) static inline void rfcomm_set_owner_w(struct sk_buff *skb, struct rfcomm_dev *dev)
{
 rfcomm_dev_hold(dev);
 atomic_add(skb->truesize, &dev->wmem_alloc);
 skb->sk = (void *) dev;
 skb->destructor = rfcomm_wfree;
}
