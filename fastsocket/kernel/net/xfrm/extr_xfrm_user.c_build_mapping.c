
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_5__ {int proto; int family; int spi; int daddr; } ;
struct xfrm_user_mapping {int reqid; int old_sport; int new_sport; int old_saddr; int new_saddr; TYPE_1__ id; } ;
struct TYPE_8__ {int reqid; int saddr; int family; } ;
struct TYPE_6__ {int proto; int spi; int daddr; } ;
struct xfrm_state {TYPE_4__ props; TYPE_3__* encap; TYPE_2__ id; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
typedef int __be16 ;
struct TYPE_7__ {int encap_sport; } ;


 int EMSGSIZE ;
 int XFRM_MSG_MAPPING ;
 int memcpy (int *,int *,int) ;
 struct xfrm_user_mapping* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int build_mapping(struct sk_buff *skb, struct xfrm_state *x,
    xfrm_address_t *new_saddr, __be16 new_sport)
{
 struct xfrm_user_mapping *um;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, 0, 0, XFRM_MSG_MAPPING, sizeof(*um), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 um = nlmsg_data(nlh);

 memcpy(&um->id.daddr, &x->id.daddr, sizeof(um->id.daddr));
 um->id.spi = x->id.spi;
 um->id.family = x->props.family;
 um->id.proto = x->id.proto;
 memcpy(&um->new_saddr, new_saddr, sizeof(um->new_saddr));
 memcpy(&um->old_saddr, &x->props.saddr, sizeof(um->old_saddr));
 um->new_sport = new_sport;
 um->old_sport = x->encap->encap_sport;
 um->reqid = x->props.reqid;

 return nlmsg_end(skb, nlh);
}
