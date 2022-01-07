
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_dom_map {int dummy; } ;
struct genl_info {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLBL_MGMT_C_LISTDEF ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put_reply (struct sk_buff*,struct genl_info*,int *,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int kfree_skb (struct sk_buff*) ;
 struct netlbl_dom_map* netlbl_domhsh_getentry (int *) ;
 int netlbl_mgmt_gnl_family ;
 int netlbl_mgmt_listentry (struct sk_buff*,struct netlbl_dom_map*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int netlbl_mgmt_listdef(struct sk_buff *skb, struct genl_info *info)
{
 int ret_val = -ENOMEM;
 struct sk_buff *ans_skb = ((void*)0);
 void *data;
 struct netlbl_dom_map *entry;

 ans_skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (ans_skb == ((void*)0))
  return -ENOMEM;
 data = genlmsg_put_reply(ans_skb, info, &netlbl_mgmt_gnl_family,
     0, NLBL_MGMT_C_LISTDEF);
 if (data == ((void*)0))
  goto listdef_failure;

 rcu_read_lock();
 entry = netlbl_domhsh_getentry(((void*)0));
 if (entry == ((void*)0)) {
  ret_val = -ENOENT;
  goto listdef_failure_lock;
 }
 ret_val = netlbl_mgmt_listentry(ans_skb, entry);
 rcu_read_unlock();
 if (ret_val != 0)
  goto listdef_failure;

 genlmsg_end(ans_skb, data);
 return genlmsg_reply(ans_skb, info);

listdef_failure_lock:
 rcu_read_unlock();
listdef_failure:
 kfree_skb(ans_skb);
 return ret_val;
}
