
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_queue_entry {int dummy; } ;
struct ipq_verdict_msg {int value; unsigned int data_len; int id; } ;


 int EINVAL ;
 int ENOENT ;
 int NF_DROP ;
 int NF_MAX_VERDICT ;
 struct nf_queue_entry* ipq_find_dequeue_entry (int ) ;
 scalar_t__ ipq_mangle_ipv6 (struct ipq_verdict_msg*,struct nf_queue_entry*) ;
 int nf_reinject (struct nf_queue_entry*,int) ;

__attribute__((used)) static int
ipq_set_verdict(struct ipq_verdict_msg *vmsg, unsigned int len)
{
 struct nf_queue_entry *entry;

 if (vmsg->value > NF_MAX_VERDICT)
  return -EINVAL;

 entry = ipq_find_dequeue_entry(vmsg->id);
 if (entry == ((void*)0))
  return -ENOENT;
 else {
  int verdict = vmsg->value;

  if (vmsg->data_len && vmsg->data_len == len)
   if (ipq_mangle_ipv6(vmsg, entry) < 0)
    verdict = NF_DROP;

  nf_reinject(entry, verdict);
  return 0;
 }
}
