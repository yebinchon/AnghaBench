
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int bits; } ;



__attribute__((used)) static inline int tnode_child_length(const struct tnode *tn)
{
 return 1 << tn->bits;
}
