
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct leaf {int list; int parent; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int T_LEAF ;
 struct leaf* kmem_cache_alloc (int ,int ) ;
 int trie_leaf_kmem ;

__attribute__((used)) static struct leaf *leaf_new(void)
{
 struct leaf *l = kmem_cache_alloc(trie_leaf_kmem, GFP_KERNEL);
 if (l) {
  l->parent = T_LEAF;
  INIT_HLIST_HEAD(&l->list);
 }
 return l;
}
