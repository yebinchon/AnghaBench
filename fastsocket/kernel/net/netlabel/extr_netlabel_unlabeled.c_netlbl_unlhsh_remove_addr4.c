
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlbl_unlhsh_iface {int ifindex; int addr4_list; } ;
struct netlbl_unlhsh_addr4 {int rcu; int secid; } ;
struct netlbl_audit {int dummy; } ;
struct netlbl_af4list {int dummy; } ;
struct net_device {int * name; } ;
struct net {int dummy; } ;
struct in_addr {int s_addr; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_MAC_UNLBL_STCDEL ;
 int ENOENT ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int call_rcu (int *,int ) ;
 struct net_device* dev_get_by_index (struct net*,int ) ;
 int dev_put (struct net_device*) ;
 int netlbl_af4list_audit_addr (struct audit_buffer*,int,int *,int ,int ) ;
 struct netlbl_af4list* netlbl_af4list_remove (int ,int ,int *) ;
 struct audit_buffer* netlbl_audit_start_common (int ,struct netlbl_audit*) ;
 struct netlbl_unlhsh_addr4* netlbl_unlhsh_addr4_entry (struct netlbl_af4list*) ;
 int netlbl_unlhsh_free_addr4 ;
 int netlbl_unlhsh_lock ;
 int security_release_secctx (char*,int ) ;
 scalar_t__ security_secid_to_secctx (int ,char**,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int netlbl_unlhsh_remove_addr4(struct net *net,
          struct netlbl_unlhsh_iface *iface,
          const struct in_addr *addr,
          const struct in_addr *mask,
          struct netlbl_audit *audit_info)
{
 struct netlbl_af4list *list_entry;
 struct netlbl_unlhsh_addr4 *entry;
 struct audit_buffer *audit_buf;
 struct net_device *dev;
 char *secctx;
 u32 secctx_len;

 spin_lock(&netlbl_unlhsh_lock);
 list_entry = netlbl_af4list_remove(addr->s_addr, mask->s_addr,
        &iface->addr4_list);
 spin_unlock(&netlbl_unlhsh_lock);
 if (list_entry != ((void*)0))
  entry = netlbl_unlhsh_addr4_entry(list_entry);
 else
  entry = ((void*)0);

 audit_buf = netlbl_audit_start_common(AUDIT_MAC_UNLBL_STCDEL,
           audit_info);
 if (audit_buf != ((void*)0)) {
  dev = dev_get_by_index(net, iface->ifindex);
  netlbl_af4list_audit_addr(audit_buf, 1,
       (dev != ((void*)0) ? dev->name : ((void*)0)),
       addr->s_addr, mask->s_addr);
  if (dev != ((void*)0))
   dev_put(dev);
  if (entry != ((void*)0) &&
      security_secid_to_secctx(entry->secid,
          &secctx, &secctx_len) == 0) {
   audit_log_format(audit_buf, " sec_obj=%s", secctx);
   security_release_secctx(secctx, secctx_len);
  }
  audit_log_format(audit_buf, " res=%u", entry != ((void*)0) ? 1 : 0);
  audit_log_end(audit_buf);
 }

 if (entry == ((void*)0))
  return -ENOENT;

 call_rcu(&entry->rcu, netlbl_unlhsh_free_addr4);
 return 0;
}
