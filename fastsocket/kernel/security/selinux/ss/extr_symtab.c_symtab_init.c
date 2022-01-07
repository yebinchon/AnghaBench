
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {scalar_t__ nprim; int table; } ;


 int ENOMEM ;
 int hashtab_create (int ,int ,unsigned int) ;
 int symcmp ;
 int symhash ;

int symtab_init(struct symtab *s, unsigned int size)
{
 s->table = hashtab_create(symhash, symcmp, size);
 if (!s->table)
  return -ENOMEM;
 s->nprim = 0;
 return 0;
}
