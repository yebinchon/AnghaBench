
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int dummy; } ;
struct leaf {int list; } ;
struct fib_table {scalar_t__ tb_data; } ;


 scalar_t__ hlist_empty (int *) ;
 int pr_debug (char*,int) ;
 struct leaf* trie_firstleaf (struct trie*) ;
 scalar_t__ trie_flush_leaf (struct leaf*) ;
 int trie_leaf_remove (struct trie*,struct leaf*) ;
 struct leaf* trie_nextleaf (struct leaf*) ;

__attribute__((used)) static int fn_trie_flush(struct fib_table *tb)
{
 struct trie *t = (struct trie *) tb->tb_data;
 struct leaf *l, *ll = ((void*)0);
 int found = 0;

 for (l = trie_firstleaf(t); l; l = trie_nextleaf(l)) {
  found += trie_flush_leaf(l);

  if (ll && hlist_empty(&ll->list))
   trie_leaf_remove(t, ll);
  ll = l;
 }

 if (ll && hlist_empty(&ll->list))
  trie_leaf_remove(t, ll);

 pr_debug("trie_flush found=%d\n", found);
 return found;
}
