
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sym_entry {TYPE_1__* sym; int * name; } ;
struct TYPE_2__ {scalar_t__ st_size; } ;


 int assert (int ) ;
 int strcmp (int *,int *) ;

__attribute__((used)) static int
cmp_size(const void *lp, const void *rp)
{
 const struct sym_entry *l, *r;

 l = lp;
 r = rp;

 assert(l != ((void*)0));
 assert(l->name != ((void*)0));
 assert(l->sym != ((void*)0));
 assert(r != ((void*)0));
 assert(r->name != ((void*)0));
 assert(r->sym != ((void*)0));

 if (l->sym->st_size == r->sym->st_size)
  return (strcmp(l->name, r->name));

 return (l->sym->st_size - r->sym->st_size);
}
