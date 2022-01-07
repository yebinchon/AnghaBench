
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ppc_stub_hash_entry {int dummy; } ;
struct bfd_link_hash_table {int dummy; } ;
struct TYPE_9__ {int * glist; scalar_t__ offset; } ;
struct TYPE_8__ {int * glist; scalar_t__ offset; } ;
struct TYPE_7__ {int * glist; scalar_t__ refcount; } ;
struct TYPE_6__ {int * glist; scalar_t__ refcount; } ;
struct TYPE_10__ {struct bfd_link_hash_table root; TYPE_4__ init_plt_offset; TYPE_3__ init_got_offset; TYPE_2__ init_plt_refcount; TYPE_1__ init_got_refcount; } ;
struct ppc_link_hash_table {TYPE_5__ elf; int branch_hash_table; int stub_hash_table; } ;
struct ppc_link_hash_entry {int dummy; } ;
struct ppc_branch_hash_entry {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 int _bfd_elf_link_hash_table_init (TYPE_5__*,int *,int ,int) ;
 int bfd_hash_table_init (int *,int ,int) ;
 struct ppc_link_hash_table* bfd_zmalloc (int) ;
 int branch_hash_newfunc ;
 int free (struct ppc_link_hash_table*) ;
 int link_hash_newfunc ;
 int stub_hash_newfunc ;

__attribute__((used)) static struct bfd_link_hash_table *
ppc64_elf_link_hash_table_create (bfd *abfd)
{
  struct ppc_link_hash_table *htab;
  bfd_size_type amt = sizeof (struct ppc_link_hash_table);

  htab = bfd_zmalloc (amt);
  if (htab == ((void*)0))
    return ((void*)0);

  if (!_bfd_elf_link_hash_table_init (&htab->elf, abfd, link_hash_newfunc,
          sizeof (struct ppc_link_hash_entry)))
    {
      free (htab);
      return ((void*)0);
    }


  if (!bfd_hash_table_init (&htab->stub_hash_table, stub_hash_newfunc,
       sizeof (struct ppc_stub_hash_entry)))
    return ((void*)0);


  if (!bfd_hash_table_init (&htab->branch_hash_table, branch_hash_newfunc,
       sizeof (struct ppc_branch_hash_entry)))
    return ((void*)0);





  htab->elf.init_got_refcount.refcount = 0;
  htab->elf.init_got_refcount.glist = ((void*)0);
  htab->elf.init_plt_refcount.refcount = 0;
  htab->elf.init_plt_refcount.glist = ((void*)0);
  htab->elf.init_got_offset.offset = 0;
  htab->elf.init_got_offset.glist = ((void*)0);
  htab->elf.init_plt_offset.offset = 0;
  htab->elf.init_plt_offset.glist = ((void*)0);

  return &htab->elf.root;
}
