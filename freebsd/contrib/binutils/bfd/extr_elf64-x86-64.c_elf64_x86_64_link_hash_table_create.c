
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_link_hash_table {int dummy; } ;
struct TYPE_6__ {struct bfd_link_hash_table root; } ;
struct TYPE_5__ {scalar_t__ refcount; } ;
struct TYPE_4__ {int * abfd; } ;
struct elf64_x86_64_link_hash_table {TYPE_3__ elf; scalar_t__ sgotplt_jump_table_size; TYPE_2__ tls_ld_got; scalar_t__ tlsdesc_got; scalar_t__ tlsdesc_plt; TYPE_1__ sym_sec; int * srelbss; int * sdynbss; int * srelplt; int * splt; int * srelgot; int * sgotplt; int * sgot; } ;
struct elf64_x86_64_link_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 int _bfd_elf_link_hash_table_init (TYPE_3__*,int *,int ,int) ;
 scalar_t__ bfd_malloc (int) ;
 int free (struct elf64_x86_64_link_hash_table*) ;
 int link_hash_newfunc ;

__attribute__((used)) static struct bfd_link_hash_table *
elf64_x86_64_link_hash_table_create (bfd *abfd)
{
  struct elf64_x86_64_link_hash_table *ret;
  bfd_size_type amt = sizeof (struct elf64_x86_64_link_hash_table);

  ret = (struct elf64_x86_64_link_hash_table *) bfd_malloc (amt);
  if (ret == ((void*)0))
    return ((void*)0);

  if (!_bfd_elf_link_hash_table_init (&ret->elf, abfd, link_hash_newfunc,
          sizeof (struct elf64_x86_64_link_hash_entry)))
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
  ret->sym_sec.abfd = ((void*)0);
  ret->tlsdesc_plt = 0;
  ret->tlsdesc_got = 0;
  ret->tls_ld_got.refcount = 0;
  ret->sgotplt_jump_table_size = 0;

  return &ret->elf.root;
}
