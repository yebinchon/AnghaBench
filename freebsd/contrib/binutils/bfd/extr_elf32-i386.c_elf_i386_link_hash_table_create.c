
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_link_hash_table {int dummy; } ;
struct TYPE_6__ {struct bfd_link_hash_table root; } ;
struct TYPE_5__ {int * abfd; } ;
struct TYPE_4__ {scalar_t__ refcount; } ;
struct elf_i386_link_hash_table {TYPE_3__ elf; scalar_t__ plt0_pad_byte; int * srelplt2; scalar_t__ is_vxworks; TYPE_2__ sym_sec; scalar_t__ sgotplt_jump_table_size; scalar_t__ next_tls_desc_index; TYPE_1__ tls_ldm_got; int * srelbss; int * sdynbss; int * srelplt; int * splt; int * srelgot; int * sgotplt; int * sgot; } ;
struct elf_i386_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 int _bfd_elf_link_hash_table_init (TYPE_3__*,int *,int ,int) ;
 struct elf_i386_link_hash_table* bfd_malloc (int) ;
 int free (struct elf_i386_link_hash_table*) ;
 int link_hash_newfunc ;

__attribute__((used)) static struct bfd_link_hash_table *
elf_i386_link_hash_table_create (bfd *abfd)
{
  struct elf_i386_link_hash_table *ret;
  bfd_size_type amt = sizeof (struct elf_i386_link_hash_table);

  ret = bfd_malloc (amt);
  if (ret == ((void*)0))
    return ((void*)0);

  if (!_bfd_elf_link_hash_table_init (&ret->elf, abfd, link_hash_newfunc,
          sizeof (struct elf_i386_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }

  ret->sgot = ((void*)0);
  ret->sgotplt = ((void*)0);
  ret->srelgot = ((void*)0);
  ret->splt = ((void*)0);
  ret->srelplt = ((void*)0);
  ret->sdynbss = ((void*)0);
  ret->srelbss = ((void*)0);
  ret->tls_ldm_got.refcount = 0;
  ret->next_tls_desc_index = 0;
  ret->sgotplt_jump_table_size = 0;
  ret->sym_sec.abfd = ((void*)0);
  ret->is_vxworks = 0;
  ret->srelplt2 = ((void*)0);
  ret->plt0_pad_byte = 0;

  return &ret->elf.root;
}
