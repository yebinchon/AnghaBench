
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_link_hash_table {int dummy; } ;
struct TYPE_2__ {struct bfd_link_hash_table root; } ;
struct mips_elf_link_hash_table {int* dynsym_sec_strindex; TYPE_1__ root; scalar_t__ function_stub_size; scalar_t__ plt_entry_size; scalar_t__ plt_header_size; int * splt; int * sgotplt; int * srelplt2; int * srelplt; int * sdynbss; int * srelbss; void* is_vxworks; void* mips16_stubs_seen; scalar_t__ rld_value; void* use_rld_obj_head; scalar_t__ compact_rel_size; scalar_t__ procedure_count; } ;
struct mips_elf_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 void* FALSE ;
 size_t SIZEOF_MIPS_DYNSYM_SECNAMES ;
 int _bfd_elf_link_hash_table_init (TYPE_1__*,int *,int ,int) ;
 struct mips_elf_link_hash_table* bfd_malloc (int) ;
 int free (struct mips_elf_link_hash_table*) ;
 size_t i ;
 int mips_elf_link_hash_newfunc ;

struct bfd_link_hash_table *
_bfd_mips_elf_link_hash_table_create (bfd *abfd)
{
  struct mips_elf_link_hash_table *ret;
  bfd_size_type amt = sizeof (struct mips_elf_link_hash_table);

  ret = bfd_malloc (amt);
  if (ret == ((void*)0))
    return ((void*)0);

  if (!_bfd_elf_link_hash_table_init (&ret->root, abfd,
          mips_elf_link_hash_newfunc,
          sizeof (struct mips_elf_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }






  ret->procedure_count = 0;
  ret->compact_rel_size = 0;
  ret->use_rld_obj_head = FALSE;
  ret->rld_value = 0;
  ret->mips16_stubs_seen = FALSE;
  ret->is_vxworks = FALSE;
  ret->srelbss = ((void*)0);
  ret->sdynbss = ((void*)0);
  ret->srelplt = ((void*)0);
  ret->srelplt2 = ((void*)0);
  ret->sgotplt = ((void*)0);
  ret->splt = ((void*)0);
  ret->plt_header_size = 0;
  ret->plt_entry_size = 0;
  ret->function_stub_size = 0;

  return &ret->root.root;
}
