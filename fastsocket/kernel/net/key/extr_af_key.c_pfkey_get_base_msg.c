
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sk_buff {int len; scalar_t__ data; } ;
struct sadb_msg {scalar_t__ sadb_msg_version; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_type; int sadb_msg_len; } ;


 int EINVAL ;
 int EMSGSIZE ;
 scalar_t__ PF_KEY_V2 ;
 scalar_t__ SADB_MAX ;
 scalar_t__ SADB_RESERVED ;

__attribute__((used)) static struct sadb_msg *pfkey_get_base_msg(struct sk_buff *skb, int *errp)
{
 struct sadb_msg *hdr = ((void*)0);

 if (skb->len < sizeof(*hdr)) {
  *errp = -EMSGSIZE;
 } else {
  hdr = (struct sadb_msg *) skb->data;
  if (hdr->sadb_msg_version != PF_KEY_V2 ||
      hdr->sadb_msg_reserved != 0 ||
      (hdr->sadb_msg_type <= SADB_RESERVED ||
       hdr->sadb_msg_type > SADB_MAX)) {
   hdr = ((void*)0);
   *errp = -EINVAL;
  } else if (hdr->sadb_msg_len != (skb->len /
       sizeof(uint64_t)) ||
      hdr->sadb_msg_len < (sizeof(struct sadb_msg) /
      sizeof(uint64_t))) {
   hdr = ((void*)0);
   *errp = -EMSGSIZE;
  } else {
   *errp = 0;
  }
 }
 return hdr;
}
