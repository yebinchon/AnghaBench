
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_service {scalar_t__ af; } ;
struct TYPE_2__ {int ip; int in6; } ;
struct ip_vs_dest_user_kern {int weight; int conn_flags; scalar_t__ u_threshold; int l_threshold; TYPE_1__ addr; } ;
struct ip_vs_dest {scalar_t__ u_threshold; int l_threshold; int flags; int stats; struct ip_vs_service* svc; int conn_flags; int weight; } ;


 scalar_t__ AF_INET6 ;
 int IP_VS_CONN_F_DEST_MASK ;
 int IP_VS_CONN_F_FWD_MASK ;
 int IP_VS_CONN_F_INACTIVE ;
 int IP_VS_CONN_F_LOCALNODE ;
 int IP_VS_CONN_F_MASQ ;
 int IP_VS_CONN_F_NOOUTPUT ;
 int IP_VS_DEST_F_AVAILABLE ;
 int IP_VS_DEST_F_OVERLOAD ;
 scalar_t__ RTN_LOCAL ;
 scalar_t__ __ip_vs_addr_is_local_v6 (int *) ;
 int __ip_vs_bind_svc (struct ip_vs_dest*,struct ip_vs_service*) ;
 int __ip_vs_rs_lock ;
 int __ip_vs_unbind_svc (struct ip_vs_dest*) ;
 int atomic_set (int *,int) ;
 scalar_t__ inet_addr_type (int *,int ) ;
 int init_net ;
 int ip_vs_rs_hash (struct ip_vs_dest*) ;
 int ip_vs_zero_stats (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void
__ip_vs_update_dest(struct ip_vs_service *svc,
      struct ip_vs_dest *dest, struct ip_vs_dest_user_kern *udest)
{
 int conn_flags;


 atomic_set(&dest->weight, udest->weight);
 conn_flags = udest->conn_flags & IP_VS_CONN_F_DEST_MASK;
 conn_flags |= IP_VS_CONN_F_INACTIVE;
  if (inet_addr_type(&init_net, udest->addr.ip) == RTN_LOCAL) {
   conn_flags = (conn_flags & ~IP_VS_CONN_F_FWD_MASK)
    | IP_VS_CONN_F_LOCALNODE;
  }


 if ((conn_flags & IP_VS_CONN_F_FWD_MASK) != IP_VS_CONN_F_MASQ) {
  conn_flags |= IP_VS_CONN_F_NOOUTPUT;
 } else {




  write_lock_bh(&__ip_vs_rs_lock);
  ip_vs_rs_hash(dest);
  write_unlock_bh(&__ip_vs_rs_lock);
 }
 atomic_set(&dest->conn_flags, conn_flags);


 if (!dest->svc) {
  __ip_vs_bind_svc(dest, svc);
 } else {
  if (dest->svc != svc) {
   __ip_vs_unbind_svc(dest);
   ip_vs_zero_stats(&dest->stats);
   __ip_vs_bind_svc(dest, svc);
  }
 }


 dest->flags |= IP_VS_DEST_F_AVAILABLE;

 if (udest->u_threshold == 0 || udest->u_threshold > dest->u_threshold)
  dest->flags &= ~IP_VS_DEST_F_OVERLOAD;
 dest->u_threshold = udest->u_threshold;
 dest->l_threshold = udest->l_threshold;
}
