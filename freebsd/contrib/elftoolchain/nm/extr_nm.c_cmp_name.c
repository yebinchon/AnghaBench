
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_entry {int * name; } ;


 int assert (int ) ;
 int strcmp (int *,int *) ;

__attribute__((used)) static int
cmp_name(const void *l, const void *r)
{

 assert(l != ((void*)0));
 assert(r != ((void*)0));
 assert(((const struct sym_entry *)l)->name != ((void*)0));
 assert(((const struct sym_entry *)r)->name != ((void*)0));

 return (strcmp(((const struct sym_entry *)l)->name,
     ((const struct sym_entry *)r)->name));
}
