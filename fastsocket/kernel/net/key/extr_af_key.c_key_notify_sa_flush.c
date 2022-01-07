
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_len; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; int sadb_msg_version; int sadb_msg_pid; int sadb_msg_seq; int sadb_msg_type; int sadb_msg_satype; } ;
struct TYPE_2__ {int proto; } ;
struct km_event {int net; int pid; int seq; TYPE_1__ data; } ;


 int BROADCAST_ALL ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int PF_KEY_V2 ;
 int SADB_FLUSH ;
 struct sk_buff* alloc_skb (int,int ) ;
 int pfkey_broadcast (struct sk_buff*,int ,int ,int *,int ) ;
 int pfkey_proto2satype (int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int key_notify_sa_flush(struct km_event *c)
{
 struct sk_buff *skb;
 struct sadb_msg *hdr;

 skb = alloc_skb(sizeof(struct sadb_msg) + 16, GFP_ATOMIC);
 if (!skb)
  return -ENOBUFS;
 hdr = (struct sadb_msg *) skb_put(skb, sizeof(struct sadb_msg));
 hdr->sadb_msg_satype = pfkey_proto2satype(c->data.proto);
 hdr->sadb_msg_type = SADB_FLUSH;
 hdr->sadb_msg_seq = c->seq;
 hdr->sadb_msg_pid = c->pid;
 hdr->sadb_msg_version = PF_KEY_V2;
 hdr->sadb_msg_errno = (uint8_t) 0;
 hdr->sadb_msg_len = (sizeof(struct sadb_msg) / sizeof(uint64_t));
 hdr->sadb_msg_reserved = 0;

 pfkey_broadcast(skb, GFP_ATOMIC, BROADCAST_ALL, ((void*)0), c->net);

 return 0;
}
