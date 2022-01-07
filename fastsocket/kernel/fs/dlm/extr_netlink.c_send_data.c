
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct nlmsghdr {int dummy; } ;
struct genlmsghdr {int dummy; } ;


 void* genlmsg_data (struct genlmsghdr*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_unicast (int *,struct sk_buff*,int ) ;
 int init_net ;
 int listener_nlpid ;
 struct genlmsghdr* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;

__attribute__((used)) static int send_data(struct sk_buff *skb)
{
 struct genlmsghdr *genlhdr = nlmsg_data((struct nlmsghdr *)skb->data);
 void *data = genlmsg_data(genlhdr);
 int rv;

 rv = genlmsg_end(skb, data);
 if (rv < 0) {
  nlmsg_free(skb);
  return rv;
 }

 return genlmsg_unicast(&init_net, skb, listener_nlpid);
}
