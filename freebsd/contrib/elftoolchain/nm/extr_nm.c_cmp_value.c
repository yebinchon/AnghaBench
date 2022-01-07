
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sym_entry {TYPE_2__* sym; int * name; } ;
struct TYPE_4__ {scalar_t__ st_value; } ;
struct TYPE_3__ {char* t_table; } ;


 scalar_t__ IS_UNDEF_SYM_TYPE (int ) ;
 int assert (int) ;
 int get_sym_type (TYPE_2__*,char const*) ;
 TYPE_1__* nm_print_data ;
 int strcmp (int *,int *) ;

__attribute__((used)) static int
cmp_value(const void *lp, const void *rp)
{
 const struct sym_entry *l, *r;
 const char *ttable;
 int l_is_undef, r_is_undef;

 l = lp;
 r = rp;

 assert(nm_print_data != ((void*)0));
 ttable = nm_print_data->t_table;

 assert(l != ((void*)0));
 assert(l->name != ((void*)0));
 assert(l->sym != ((void*)0));
 assert(r != ((void*)0));
 assert(r->name != ((void*)0));
 assert(r->sym != ((void*)0));
 assert(ttable != ((void*)0));

 l_is_undef = IS_UNDEF_SYM_TYPE(get_sym_type(l->sym, ttable)) ? 1 : 0;
 r_is_undef = IS_UNDEF_SYM_TYPE(get_sym_type(r->sym, ttable)) ? 1 : 0;

 assert(l_is_undef + r_is_undef >= 0);
 assert(l_is_undef + r_is_undef <= 2);

 switch (l_is_undef + r_is_undef) {
 case 0:

  if (l->sym->st_value == r->sym->st_value)
   return (strcmp(l->name, r->name));
  return (l->sym->st_value > r->sym->st_value ? 1 : -1);
 case 1:

  return (l_is_undef == 0 ? 1 : -1);
 case 2:

  return (strcmp(l->name, r->name));
 }


 return (l->sym->st_value - r->sym->st_value);
}
