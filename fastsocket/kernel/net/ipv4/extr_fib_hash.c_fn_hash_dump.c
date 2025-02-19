
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct netlink_callback {int* args; } ;
struct fn_zone {struct fn_zone* fz_next; } ;
struct fn_hash {struct fn_zone* fn_zone_list; } ;
struct fib_table {scalar_t__ tb_data; } ;


 int fib_hash_lock ;
 scalar_t__ fn_hash_dump_zone (struct sk_buff*,struct netlink_callback*,struct fib_table*,struct fn_zone*) ;
 int memset (int*,int ,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int fn_hash_dump(struct fib_table *tb, struct sk_buff *skb, struct netlink_callback *cb)
{
 int m, s_m;
 struct fn_zone *fz;
 struct fn_hash *table = (struct fn_hash *)tb->tb_data;

 s_m = cb->args[2];
 read_lock(&fib_hash_lock);
 for (fz = table->fn_zone_list, m=0; fz; fz = fz->fz_next, m++) {
  if (m < s_m) continue;
  if (fn_hash_dump_zone(skb, cb, tb, fz) < 0) {
   cb->args[2] = m;
   read_unlock(&fib_hash_lock);
   return -1;
  }
  memset(&cb->args[3], 0,
         sizeof(cb->args) - 3*sizeof(cb->args[0]));
 }
 read_unlock(&fib_hash_lock);
 cb->args[2] = m;
 return skb->len;
}
