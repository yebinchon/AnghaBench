
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int truesize; scalar_t__ sk; } ;
struct rfcomm_dev {int wakeup_task; int flags; int wmem_alloc; } ;


 int RFCOMM_TTY_ATTACHED ;
 int atomic_sub (int ,int *) ;
 int rfcomm_dev_put (struct rfcomm_dev*) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rfcomm_wfree(struct sk_buff *skb)
{
 struct rfcomm_dev *dev = (void *) skb->sk;
 atomic_sub(skb->truesize, &dev->wmem_alloc);
 if (test_bit(RFCOMM_TTY_ATTACHED, &dev->flags))
  tasklet_schedule(&dev->wakeup_task);
 rfcomm_dev_put(dev);
}
