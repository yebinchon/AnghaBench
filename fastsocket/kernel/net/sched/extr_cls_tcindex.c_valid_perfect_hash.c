
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcindex_data {int hash; int mask; int shift; } ;



__attribute__((used)) static inline int
valid_perfect_hash(struct tcindex_data *p)
{
 return p->hash > (p->mask >> p->shift);
}
