
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int string; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ root; } ;
struct elf_link_hash_entry {int dynamic; scalar_t__ type; TYPE_2__ root; } ;
struct bfd_link_info {scalar_t__ dynamic_data; scalar_t__ relocatable; struct bfd_elf_dynamic_list* dynamic_list; } ;
struct bfd_elf_dynamic_list {int head; scalar_t__ (* match ) (int *,int *,int ) ;} ;
struct TYPE_7__ {int st_info; } ;
typedef TYPE_3__ Elf_Internal_Sym ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ STT_OBJECT ;
 scalar_t__ bfd_link_hash_new ;
 scalar_t__ stub1 (int *,int *,int ) ;

void
bfd_elf_link_mark_dynamic_symbol (struct bfd_link_info *info,
      struct elf_link_hash_entry *h,
      Elf_Internal_Sym *sym)
{
  struct bfd_elf_dynamic_list *d = info->dynamic_list;


  if(h->dynamic || info->relocatable)
    return;

  if ((info->dynamic_data
       && (h->type == STT_OBJECT
    || (sym != ((void*)0)
        && ELF_ST_TYPE (sym->st_info) == STT_OBJECT)))
      || (d != ((void*)0)
   && h->root.type == bfd_link_hash_new
   && (*d->match) (&d->head, ((void*)0), h->root.root.string)))
    h->dynamic = 1;
}
