
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 int audit_backlog_wait ;
 scalar_t__ audit_default ;
 scalar_t__ audit_pid ;
 int audit_printk_skb (struct sk_buff*) ;
 int audit_skb_hold_queue ;
 int audit_skb_queue ;
 int current ;
 int kauditd_send_skb (struct sk_buff*) ;
 int kauditd_wait ;
 int kthread_should_stop () ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_len (int *) ;
 int try_to_freeze () ;
 scalar_t__ unlikely (struct sk_buff*) ;
 int wait ;
 int wake_up (int *) ;

__attribute__((used)) static int kauditd_thread(void *dummy)
{
 struct sk_buff *skb;

 set_freezable();
 while (!kthread_should_stop()) {
  if (audit_default && audit_pid) {
   skb = skb_dequeue(&audit_skb_hold_queue);
   if (unlikely(skb)) {
    while (skb && audit_pid) {
     kauditd_send_skb(skb);
     skb = skb_dequeue(&audit_skb_hold_queue);
    }
   }
  }

  skb = skb_dequeue(&audit_skb_queue);
  wake_up(&audit_backlog_wait);
  if (skb) {
   if (audit_pid)
    kauditd_send_skb(skb);
   else
    audit_printk_skb(skb);
  } else {
   DECLARE_WAITQUEUE(wait, current);
   set_current_state(TASK_INTERRUPTIBLE);
   add_wait_queue(&kauditd_wait, &wait);

   if (!skb_queue_len(&audit_skb_queue)) {
    try_to_freeze();
    schedule();
   }

   __set_current_state(TASK_RUNNING);
   remove_wait_queue(&kauditd_wait, &wait);
  }
 }
 return 0;
}
