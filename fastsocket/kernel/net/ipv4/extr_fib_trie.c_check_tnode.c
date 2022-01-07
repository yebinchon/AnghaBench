
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int pos; int bits; } ;


 int WARN_ON (int ) ;

__attribute__((used)) static inline void check_tnode(const struct tnode *tn)
{
 WARN_ON(tn && tn->pos+tn->bits > 32);
}
