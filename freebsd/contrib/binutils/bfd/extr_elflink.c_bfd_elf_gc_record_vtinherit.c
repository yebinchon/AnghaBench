
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


struct TYPE_10__ {scalar_t__ value; int * section; } ;
struct TYPE_11__ {TYPE_3__ def; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_4__ u; } ;
struct elf_link_hash_entry {TYPE_7__* vtable; TYPE_5__ root; } ;
struct elf_backend_data {TYPE_1__* s; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_14__ {struct elf_link_hash_entry* parent; } ;
struct TYPE_9__ {int sh_size; scalar_t__ sh_info; } ;
struct TYPE_13__ {TYPE_2__ symtab_hdr; } ;
struct TYPE_8__ {int sizeof_sym; } ;


 int FALSE ;
 int TRUE ;
 int _bfd_error_handler (char*,int *,int *,unsigned long) ;
 int bfd_error_invalid_operation ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 int bfd_set_error (int ) ;
 TYPE_7__* bfd_zalloc (int *,int) ;
 int elf_bad_symtab (int *) ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_6__* elf_tdata (int *) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (char*,int *,int *,unsigned long) ;

bfd_boolean
bfd_elf_gc_record_vtinherit (bfd *abfd,
        asection *sec,
        struct elf_link_hash_entry *h,
        bfd_vma offset)
{
  struct elf_link_hash_entry **sym_hashes, **sym_hashes_end;
  struct elf_link_hash_entry **search, *child;
  bfd_size_type extsymcount;
  const struct elf_backend_data *bed = get_elf_backend_data (abfd);




  extsymcount = elf_tdata (abfd)->symtab_hdr.sh_size / bed->s->sizeof_sym;
  if (!elf_bad_symtab (abfd))
    extsymcount -= elf_tdata (abfd)->symtab_hdr.sh_info;

  sym_hashes = elf_sym_hashes (abfd);
  sym_hashes_end = sym_hashes + extsymcount;



  for (search = sym_hashes; search != sym_hashes_end; ++search)
    {
      if ((child = *search) != ((void*)0)
   && (child->root.type == bfd_link_hash_defined
       || child->root.type == bfd_link_hash_defweak)
   && child->root.u.def.section == sec
   && child->root.u.def.value == offset)
 goto win;
    }

  (*_bfd_error_handler) ("%B: %A+%lu: No symbol found for INHERIT",
    abfd, sec, (unsigned long) offset);
  bfd_set_error (bfd_error_invalid_operation);
  return FALSE;

 win:
  if (!child->vtable)
    {
      child->vtable = bfd_zalloc (abfd, sizeof (*child->vtable));
      if (!child->vtable)
 return FALSE;
    }
  if (!h)
    {





      child->vtable->parent = (struct elf_link_hash_entry *) -1;
    }
  else
    child->vtable->parent = h;

  return TRUE;
}
