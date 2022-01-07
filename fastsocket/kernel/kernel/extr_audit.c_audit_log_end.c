
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct audit_buffer {TYPE_1__* skb; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 scalar_t__ NLMSG_SPACE (int ) ;
 int audit_buffer_free (struct audit_buffer*) ;
 int audit_log_lost (char*) ;
 scalar_t__ audit_pid ;
 int audit_printk_skb (TYPE_1__*) ;
 int audit_rate_check () ;
 int audit_skb_queue ;
 int kauditd_wait ;
 struct nlmsghdr* nlmsg_hdr (TYPE_1__*) ;
 int skb_queue_tail (int *,TYPE_1__*) ;
 int wake_up_interruptible (int *) ;

void audit_log_end(struct audit_buffer *ab)
{
 if (!ab)
  return;
 if (!audit_rate_check()) {
  audit_log_lost("rate limit exceeded");
 } else {
  struct nlmsghdr *nlh = nlmsg_hdr(ab->skb);
  nlh->nlmsg_len = ab->skb->len - NLMSG_SPACE(0);

  if (audit_pid) {
   skb_queue_tail(&audit_skb_queue, ab->skb);
   wake_up_interruptible(&kauditd_wait);
  } else {
   audit_printk_skb(ab->skb);
  }
  ab->skb = ((void*)0);
 }
 audit_buffer_free(ab);
}
