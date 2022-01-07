
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int string; } ;
struct TYPE_8__ {scalar_t__ link; } ;
struct TYPE_9__ {TYPE_1__ i; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_3__ root; TYPE_2__ u; } ;
struct elf_link_hash_entry {int dynindx; TYPE_4__ root; scalar_t__ ref_regular; scalar_t__ def_regular; int dynamic; } ;
struct elf_info_failed {int failed; TYPE_7__* info; struct bfd_elf_version_tree* verdefs; } ;
struct TYPE_12__ {int * list; } ;
struct bfd_elf_version_tree {TYPE_5__ locals; struct bfd_elf_version_expr* (* match ) (TYPE_5__*,int *,int ) ;TYPE_5__ globals; struct bfd_elf_version_tree* next; } ;
struct bfd_elf_version_expr {int dummy; } ;
typedef int bfd_boolean ;
struct TYPE_13__ {int export_dynamic; } ;


 int FALSE ;
 int TRUE ;
 int bfd_elf_link_record_dynamic_symbol (TYPE_7__*,struct elf_link_hash_entry*) ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 struct bfd_elf_version_expr* stub1 (TYPE_5__*,int *,int ) ;
 struct bfd_elf_version_expr* stub2 (TYPE_5__*,int *,int ) ;

bfd_boolean
_bfd_elf_export_symbol (struct elf_link_hash_entry *h, void *data)
{
  struct elf_info_failed *eif = data;


  if (!eif->info->export_dynamic && !h->dynamic)
    return TRUE;


  if (h->root.type == bfd_link_hash_indirect)
    return TRUE;

  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;

  if (h->dynindx == -1
      && (h->def_regular
   || h->ref_regular))
    {
      struct bfd_elf_version_tree *t;
      struct bfd_elf_version_expr *d;

      for (t = eif->verdefs; t != ((void*)0); t = t->next)
 {
   if (t->globals.list != ((void*)0))
     {
       d = (*t->match) (&t->globals, ((void*)0), h->root.root.string);
       if (d != ((void*)0))
  goto doit;
     }

   if (t->locals.list != ((void*)0))
     {
       d = (*t->match) (&t->locals, ((void*)0), h->root.root.string);
       if (d != ((void*)0))
  return TRUE;
     }
 }

      if (!eif->verdefs)
 {
 doit:
   if (! bfd_elf_link_record_dynamic_symbol (eif->info, h))
     {
       eif->failed = TRUE;
       return FALSE;
     }
 }
    }

  return TRUE;
}
