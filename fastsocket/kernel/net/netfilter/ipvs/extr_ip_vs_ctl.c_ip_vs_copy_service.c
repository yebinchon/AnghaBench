
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip_vs_service_entry {int timeout; int stats; int num_dests; int netmask; int flags; int sched_name; int fwmark; int port; int addr; int protocol; } ;
struct TYPE_3__ {int ip; } ;
struct ip_vs_service {int timeout; int stats; int num_dests; int netmask; int flags; TYPE_2__* scheduler; int fwmark; int port; TYPE_1__ addr; int protocol; } ;
struct TYPE_4__ {int name; } ;


 int HZ ;
 int ip_vs_copy_stats (int *,int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
ip_vs_copy_service(struct ip_vs_service_entry *dst, struct ip_vs_service *src)
{
 dst->protocol = src->protocol;
 dst->addr = src->addr.ip;
 dst->port = src->port;
 dst->fwmark = src->fwmark;
 strlcpy(dst->sched_name, src->scheduler->name, sizeof(dst->sched_name));
 dst->flags = src->flags;
 dst->timeout = src->timeout / HZ;
 dst->netmask = src->netmask;
 dst->num_dests = src->num_dests;
 ip_vs_copy_stats(&dst->stats, &src->stats);
}
