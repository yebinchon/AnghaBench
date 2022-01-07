
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;
struct trie {int dummy; } ;
struct sk_buff {int len; } ;
struct netlink_callback {int* args; } ;
struct leaf {int key; } ;
struct fib_table {scalar_t__ tb_data; } ;


 struct leaf* fib_find_node (struct trie*,int) ;
 scalar_t__ fn_trie_dump_leaf (struct leaf*,struct fib_table*,struct sk_buff*,struct netlink_callback*) ;
 int memset (int*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct leaf* trie_firstleaf (struct trie*) ;
 struct leaf* trie_leafindex (struct trie*,int) ;
 struct leaf* trie_nextleaf (struct leaf*) ;

__attribute__((used)) static int fn_trie_dump(struct fib_table *tb, struct sk_buff *skb,
   struct netlink_callback *cb)
{
 struct leaf *l;
 struct trie *t = (struct trie *) tb->tb_data;
 t_key key = cb->args[2];
 int count = cb->args[3];

 rcu_read_lock();



 if (count == 0)
  l = trie_firstleaf(t);
 else {



  l = fib_find_node(t, key);
  if (!l)
   l = trie_leafindex(t, count);
 }

 while (l) {
  cb->args[2] = l->key;
  if (fn_trie_dump_leaf(l, tb, skb, cb) < 0) {
   cb->args[3] = count;
   rcu_read_unlock();
   return -1;
  }

  ++count;
  l = trie_nextleaf(l);
  memset(&cb->args[4], 0,
         sizeof(cb->args) - 4*sizeof(cb->args[0]));
 }
 cb->args[3] = count;
 rcu_read_unlock();

 return skb->len;
}
