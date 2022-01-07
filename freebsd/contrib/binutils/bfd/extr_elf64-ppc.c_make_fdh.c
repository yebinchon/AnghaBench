
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ string; } ;
struct TYPE_8__ {int * abfd; } ;
struct TYPE_9__ {TYPE_1__ undef; } ;
struct TYPE_11__ {TYPE_3__ root; TYPE_2__ u; } ;
struct TYPE_12__ {scalar_t__ non_elf; TYPE_4__ root; } ;
struct ppc_link_hash_entry {int fake; int is_func_descriptor; int is_func; struct ppc_link_hash_entry* oh; TYPE_5__ elf; } ;
struct bfd_link_info {int dummy; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int bfd ;
struct TYPE_13__ {scalar_t__ value; int section; int flags; scalar_t__ name; } ;
typedef TYPE_6__ asymbol ;


 int BSF_WEAK ;
 int FALSE ;
 int _bfd_generic_link_add_one_symbol (struct bfd_link_info*,int *,scalar_t__,int ,int ,scalar_t__,int *,int ,int ,struct bfd_link_hash_entry**) ;
 TYPE_6__* bfd_make_empty_symbol (int *) ;
 int bfd_und_section_ptr ;

__attribute__((used)) static struct ppc_link_hash_entry *
make_fdh (struct bfd_link_info *info,
   struct ppc_link_hash_entry *fh)
{
  bfd *abfd;
  asymbol *newsym;
  struct bfd_link_hash_entry *bh;
  struct ppc_link_hash_entry *fdh;

  abfd = fh->elf.root.u.undef.abfd;
  newsym = bfd_make_empty_symbol (abfd);
  newsym->name = fh->elf.root.root.string + 1;
  newsym->section = bfd_und_section_ptr;
  newsym->value = 0;
  newsym->flags = BSF_WEAK;

  bh = ((void*)0);
  if (!_bfd_generic_link_add_one_symbol (info, abfd, newsym->name,
      newsym->flags, newsym->section,
      newsym->value, ((void*)0), FALSE, FALSE,
      &bh))
    return ((void*)0);

  fdh = (struct ppc_link_hash_entry *) bh;
  fdh->elf.non_elf = 0;
  fdh->fake = 1;
  fdh->is_func_descriptor = 1;
  fdh->oh = fh;
  fh->is_func = 1;
  fh->oh = fdh;
  return fdh;
}
