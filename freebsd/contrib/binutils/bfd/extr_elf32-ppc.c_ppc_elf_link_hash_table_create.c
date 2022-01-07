
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfd_link_hash_table {int dummy; } ;
struct TYPE_6__ {int * glist; scalar_t__ offset; } ;
struct TYPE_5__ {int * glist; scalar_t__ refcount; } ;
struct TYPE_8__ {struct bfd_link_hash_table root; TYPE_2__ init_plt_offset; TYPE_1__ init_plt_refcount; } ;
struct ppc_elf_link_hash_table {int plt_entry_size; int plt_slot_size; int plt_initial_entry_size; TYPE_4__ elf; TYPE_3__* sdata; } ;
struct ppc_elf_link_hash_entry {int dummy; } ;
typedef int bfd ;
struct TYPE_7__ {char* name; char* sym_name; char* bss_name; } ;


 int _bfd_elf_link_hash_table_init (TYPE_4__*,int *,int ,int) ;
 struct ppc_elf_link_hash_table* bfd_zmalloc (int) ;
 int free (struct ppc_elf_link_hash_table*) ;
 int ppc_elf_link_hash_newfunc ;

__attribute__((used)) static struct bfd_link_hash_table *
ppc_elf_link_hash_table_create (bfd *abfd)
{
  struct ppc_elf_link_hash_table *ret;

  ret = bfd_zmalloc (sizeof (struct ppc_elf_link_hash_table));
  if (ret == ((void*)0))
    return ((void*)0);

  if (!_bfd_elf_link_hash_table_init (&ret->elf, abfd,
          ppc_elf_link_hash_newfunc,
          sizeof (struct ppc_elf_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }

  ret->elf.init_plt_refcount.refcount = 0;
  ret->elf.init_plt_refcount.glist = ((void*)0);
  ret->elf.init_plt_offset.offset = 0;
  ret->elf.init_plt_offset.glist = ((void*)0);

  ret->sdata[0].name = ".sdata";
  ret->sdata[0].sym_name = "_SDA_BASE_";
  ret->sdata[0].bss_name = ".sbss";

  ret->sdata[1].name = ".sdata2";
  ret->sdata[1].sym_name = "_SDA2_BASE_";
  ret->sdata[1].bss_name = ".sbss2";

  ret->plt_entry_size = 12;
  ret->plt_slot_size = 8;
  ret->plt_initial_entry_size = 72;

  return &ret->elf.root;
}
