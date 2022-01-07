
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct ovs_header {int dummy; } ;
struct nlattr {int nla_len; } ;


 scalar_t__ NLA_ALIGN (int ) ;
 size_t NLMSG_ALIGN (int) ;
 int key_attr_size () ;
 size_t nla_total_size (int ) ;

__attribute__((used)) static size_t upcall_msg_size(const struct sk_buff *skb,
         const struct nlattr *userdata)
{
 size_t size = NLMSG_ALIGN(sizeof(struct ovs_header))
  + nla_total_size(skb->len)
  + nla_total_size(key_attr_size());


 if (userdata)
  size += NLA_ALIGN(userdata->nla_len);

 return size;
}
