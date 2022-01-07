
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int dummy; } ;
struct leaf {int dummy; } ;


 struct leaf* trie_firstleaf (struct trie*) ;
 struct leaf* trie_nextleaf (struct leaf*) ;

__attribute__((used)) static struct leaf *trie_leafindex(struct trie *t, int index)
{
 struct leaf *l = trie_firstleaf(t);

 while (l && index-- > 0)
  l = trie_nextleaf(l);

 return l;
}
