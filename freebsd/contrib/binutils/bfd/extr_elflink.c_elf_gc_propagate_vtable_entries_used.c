
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* section; } ;
struct TYPE_8__ {scalar_t__ link; } ;
struct TYPE_11__ {TYPE_3__ def; TYPE_1__ i; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_4__ u; } ;
struct elf_link_hash_entry {TYPE_7__* vtable; TYPE_5__ root; } ;
struct elf_backend_data {TYPE_6__* s; } ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_14__ {unsigned int size; struct elf_link_hash_entry* parent; scalar_t__* used; } ;
struct TYPE_13__ {unsigned int log_file_align; } ;
struct TYPE_9__ {int owner; } ;


 scalar_t__ TRUE ;
 scalar_t__ bfd_link_hash_warning ;
 struct elf_backend_data* get_elf_backend_data (int ) ;

__attribute__((used)) static bfd_boolean
elf_gc_propagate_vtable_entries_used (struct elf_link_hash_entry *h, void *okp)
{
  if (h->root.type == bfd_link_hash_warning)
    h = (struct elf_link_hash_entry *) h->root.u.i.link;


  if (h->vtable == ((void*)0) || h->vtable->parent == ((void*)0))
    return TRUE;


  if (h->vtable->parent == (struct elf_link_hash_entry *) -1)
    return TRUE;


  if (h->vtable->used && h->vtable->used[-1])
    return TRUE;


  elf_gc_propagate_vtable_entries_used (h->vtable->parent, okp);

  if (h->vtable->used == ((void*)0))
    {


      h->vtable->used = h->vtable->parent->vtable->used;
      h->vtable->size = h->vtable->parent->vtable->size;
    }
  else
    {
      size_t n;
      bfd_boolean *cu, *pu;


      cu = h->vtable->used;
      cu[-1] = TRUE;
      pu = h->vtable->parent->vtable->used;
      if (pu != ((void*)0))
 {
   const struct elf_backend_data *bed;
   unsigned int log_file_align;

   bed = get_elf_backend_data (h->root.u.def.section->owner);
   log_file_align = bed->s->log_file_align;
   n = h->vtable->parent->vtable->size >> log_file_align;
   while (n--)
     {
       if (*pu)
  *cu = TRUE;
       pu++;
       cu++;
     }
 }
    }

  return TRUE;
}
