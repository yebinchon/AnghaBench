
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct rtgenmsg {int rtgen_family; } ;
struct netlink_callback {int* args; int nlh; } ;
struct neigh_table {int family; struct neigh_table* next; } ;


 int memset (int*,int ,int) ;
 scalar_t__ neigh_dump_table (struct neigh_table*,struct sk_buff*,struct netlink_callback*) ;
 struct neigh_table* neigh_tables ;
 int neigh_tbl_lock ;
 scalar_t__ nlmsg_data (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int neigh_dump_info(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct neigh_table *tbl;
 int t, family, s_t;

 read_lock(&neigh_tbl_lock);
 family = ((struct rtgenmsg *) nlmsg_data(cb->nlh))->rtgen_family;
 s_t = cb->args[0];

 for (tbl = neigh_tables, t = 0; tbl; tbl = tbl->next, t++) {
  if (t < s_t || (family && tbl->family != family))
   continue;
  if (t > s_t)
   memset(&cb->args[1], 0, sizeof(cb->args) -
      sizeof(cb->args[0]));
  if (neigh_dump_table(tbl, skb, cb) < 0)
   break;
 }
 read_unlock(&neigh_tbl_lock);

 cb->args[0] = t;
 return skb->len;
}
