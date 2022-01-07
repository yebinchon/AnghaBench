
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lang_phdr {char const* name; struct lang_phdr* next; int * flags; int * at; void* phdrs; void* filehdr; int type; } ;
typedef int etree_type ;
typedef void* bfd_boolean ;


 int exp_get_value_int (int *,int ,char*) ;
 struct lang_phdr* lang_phdr_list ;
 struct lang_phdr* stat_alloc (int) ;

void
lang_new_phdr (const char *name,
        etree_type *type,
        bfd_boolean filehdr,
        bfd_boolean phdrs,
        etree_type *at,
        etree_type *flags)
{
  struct lang_phdr *n, **pp;

  n = stat_alloc (sizeof (struct lang_phdr));
  n->next = ((void*)0);
  n->name = name;
  n->type = exp_get_value_int (type, 0, "program header type");
  n->filehdr = filehdr;
  n->phdrs = phdrs;
  n->at = at;
  n->flags = flags;

  for (pp = &lang_phdr_list; *pp != ((void*)0); pp = &(*pp)->next)
    ;
  *pp = n;
}
