
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int ip6_rt_max_size; int ip6_rt_gc_min_interval; int ip6_rt_gc_timeout; int ip6_rt_gc_interval; int ip6_rt_gc_elasticity; int ip6_rt_mtu_expires; int ip6_rt_min_advmss; scalar_t__ flush_delay; } ;
struct TYPE_15__ {int ip6_rt_gc_expire; TYPE_8__* ip6_null_entry; TYPE_8__* ip6_prohibit_entry; TYPE_6__ sysctl; int ip6_dst_ops; TYPE_5__* ip6_blk_hole_entry; } ;
struct net {TYPE_7__ ipv6; } ;
struct dst_entry {int dummy; } ;
struct TYPE_9__ {int * ops; struct dst_entry* path; } ;
struct TYPE_10__ {TYPE_1__ dst; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
struct TYPE_11__ {int * ops; struct dst_entry* path; } ;
struct TYPE_12__ {TYPE_3__ dst; } ;
struct TYPE_13__ {TYPE_4__ u; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int IPV6_MIN_MTU ;
 int ip6_blk_hole_entry_template ;
 int ip6_dst_ops_template ;
 int ip6_null_entry_template ;
 int ip6_prohibit_entry_template ;
 int kfree (TYPE_8__*) ;
 void* kmemdup (int *,int,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int ip6_route_net_init(struct net *net)
{
 int ret = -ENOMEM;

 memcpy(&net->ipv6.ip6_dst_ops, &ip6_dst_ops_template,
        sizeof(net->ipv6.ip6_dst_ops));

 net->ipv6.ip6_null_entry = kmemdup(&ip6_null_entry_template,
        sizeof(*net->ipv6.ip6_null_entry),
        GFP_KERNEL);
 if (!net->ipv6.ip6_null_entry)
  goto out_ip6_dst_ops;
 net->ipv6.ip6_null_entry->u.dst.path =
  (struct dst_entry *)net->ipv6.ip6_null_entry;
 net->ipv6.ip6_null_entry->u.dst.ops = &net->ipv6.ip6_dst_ops;
 net->ipv6.sysctl.flush_delay = 0;
 net->ipv6.sysctl.ip6_rt_max_size = 4096;
 net->ipv6.sysctl.ip6_rt_gc_min_interval = HZ / 2;
 net->ipv6.sysctl.ip6_rt_gc_timeout = 60*HZ;
 net->ipv6.sysctl.ip6_rt_gc_interval = 30*HZ;
 net->ipv6.sysctl.ip6_rt_gc_elasticity = 9;
 net->ipv6.sysctl.ip6_rt_mtu_expires = 10*60*HZ;
 net->ipv6.sysctl.ip6_rt_min_advmss = IPV6_MIN_MTU - 20 - 40;

 net->ipv6.ip6_rt_gc_expire = 30*HZ;

 ret = 0;
out:
 return ret;







out_ip6_dst_ops:
 goto out;
}
