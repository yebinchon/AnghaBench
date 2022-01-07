
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin6_scope_id; int sin6_addr; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_1__ v6; TYPE_3__ sa; } ;
struct sctp_sock {TYPE_2__* pf; } ;
struct sctp_af {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {struct sctp_af* af; } ;


 scalar_t__ AF_INET6 ;
 int IPV6_ADDR_LINKLOCAL ;
 struct net_device* dev_get_by_index (int *,int ) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int ipv6_addr_type (int *) ;
 struct sctp_af* sctp_get_af_specific (scalar_t__) ;

__attribute__((used)) static int sctp_inet6_send_verify(struct sctp_sock *opt, union sctp_addr *addr)
{
 struct sctp_af *af = ((void*)0);


 if (addr->sa.sa_family != AF_INET6)
  af = sctp_get_af_specific(addr->sa.sa_family);
 else {
  int type = ipv6_addr_type(&addr->v6.sin6_addr);
  struct net_device *dev;

  if (type & IPV6_ADDR_LINKLOCAL) {
   if (!addr->v6.sin6_scope_id)
    return 0;
   dev = dev_get_by_index(&init_net, addr->v6.sin6_scope_id);
   if (!dev)
    return 0;
   dev_put(dev);
  }
  af = opt->pf->af;
 }

 return af != ((void*)0);
}
