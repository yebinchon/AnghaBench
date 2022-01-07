
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_sync_conn_options {int dummy; } ;
struct ip_vs_protocol {unsigned long* timeout_table; } ;
struct ip_vs_dest {int refcnt; int inactconns; int activeconns; } ;
struct ip_vs_conn_param {scalar_t__ pe_data; int vport; int vaddr; } ;
struct ip_vs_conn {unsigned int flags; unsigned int state; unsigned int old_state; unsigned long timeout; int in_pkts; int in_seq; struct ip_vs_dest* dest; } ;
typedef int __u32 ;
typedef int __be16 ;


 unsigned long HZ ;
 unsigned int IP_VS_CONN_F_BACKUP_UPD_MASK ;
 unsigned int IP_VS_CONN_F_INACTIVE ;
 unsigned int IP_VS_CONN_F_TEMPLATE ;
 int IP_VS_DBG (int,char*) ;
 unsigned long MAX_SCHEDULE_TIMEOUT ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 struct ip_vs_conn* ip_vs_conn_in_get (struct ip_vs_conn_param*) ;
 struct ip_vs_conn* ip_vs_conn_new (struct ip_vs_conn_param*,union nf_inet_addr const*,int ,unsigned int,struct ip_vs_dest*,int ) ;
 int ip_vs_conn_put (struct ip_vs_conn*) ;
 struct ip_vs_conn* ip_vs_ct_in_get (struct ip_vs_conn_param*) ;
 struct ip_vs_dest* ip_vs_find_dest (unsigned int,union nf_inet_addr const*,int ,int ,int ,unsigned int,int ,unsigned int) ;
 struct ip_vs_dest* ip_vs_try_bind_dest (struct ip_vs_conn*) ;
 int kfree (scalar_t__) ;
 int memcpy (int *,struct ip_vs_sync_conn_options*,int) ;
 int sysctl_sync_threshold () ;

__attribute__((used)) static void ip_vs_proc_conn(struct ip_vs_conn_param *param, unsigned flags,
       unsigned state, unsigned protocol, unsigned type,
       const union nf_inet_addr *daddr, __be16 dport,
       unsigned long timeout, __u32 fwmark,
       struct ip_vs_sync_conn_options *opt,
       struct ip_vs_protocol *pp)
{
 struct ip_vs_dest *dest;
 struct ip_vs_conn *cp;


 if (!(flags & IP_VS_CONN_F_TEMPLATE))
  cp = ip_vs_conn_in_get(param);
 else
  cp = ip_vs_ct_in_get(param);

 if (cp) {

  kfree(param->pe_data);

  dest = cp->dest;
  if ((cp->flags ^ flags) & IP_VS_CONN_F_INACTIVE &&
      !(flags & IP_VS_CONN_F_TEMPLATE) && dest) {
   if (flags & IP_VS_CONN_F_INACTIVE) {
    atomic_dec(&dest->activeconns);
    atomic_inc(&dest->inactconns);
   } else {
    atomic_inc(&dest->activeconns);
    atomic_dec(&dest->inactconns);
   }
  }
  flags &= IP_VS_CONN_F_BACKUP_UPD_MASK;
  flags |= cp->flags & ~IP_VS_CONN_F_BACKUP_UPD_MASK;
  cp->flags = flags;
  if (!dest) {
   dest = ip_vs_try_bind_dest(cp);
   if (dest)
    atomic_dec(&dest->refcnt);
  }
 } else {





  dest = ip_vs_find_dest(type, daddr, dport, param->vaddr,
           param->vport, protocol, fwmark, flags);

  cp = ip_vs_conn_new(param, daddr, dport, flags, dest, fwmark);
  if (dest)
   atomic_dec(&dest->refcnt);
  if (!cp) {
   if (param->pe_data)
    kfree(param->pe_data);
   IP_VS_DBG(2, "BACKUP, add new conn. failed\n");
   return;
  }
 }

 if (opt)
  memcpy(&cp->in_seq, opt, sizeof(*opt));
 atomic_set(&cp->in_pkts, sysctl_sync_threshold());
 cp->state = state;
 cp->old_state = cp->state;
 if (timeout) {
  if (timeout > MAX_SCHEDULE_TIMEOUT / HZ)
   timeout = MAX_SCHEDULE_TIMEOUT / HZ;
  cp->timeout = timeout*HZ;
 } else if (!(flags & IP_VS_CONN_F_TEMPLATE) && pp->timeout_table)
  cp->timeout = pp->timeout_table[state];
 else
  cp->timeout = (3*60*HZ);
 ip_vs_conn_put(cp);
}
