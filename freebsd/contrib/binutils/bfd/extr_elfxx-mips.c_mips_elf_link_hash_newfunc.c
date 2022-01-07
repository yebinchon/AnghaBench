
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifd; } ;
struct mips_elf_link_hash_entry {int tls_type; void* is_relocation_target; void* is_branch_target; void* forced_local; int * call_fp_stub; int * call_stub; void* need_fn_stub; int * fn_stub; void* no_fn_stub; void* readonly_reloc; scalar_t__ possibly_dynamic_relocs; TYPE_1__ esym; } ;
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
typedef int EXTR ;


 void* FALSE ;
 int GOT_NORMAL ;
 scalar_t__ _bfd_elf_link_hash_newfunc (struct bfd_hash_entry*,struct bfd_hash_table*,char const*) ;
 struct mips_elf_link_hash_entry* bfd_hash_allocate (struct bfd_hash_table*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static struct bfd_hash_entry *
mips_elf_link_hash_newfunc (struct bfd_hash_entry *entry,
       struct bfd_hash_table *table, const char *string)
{
  struct mips_elf_link_hash_entry *ret =
    (struct mips_elf_link_hash_entry *) entry;



  if (ret == ((void*)0))
    ret = bfd_hash_allocate (table, sizeof (struct mips_elf_link_hash_entry));
  if (ret == ((void*)0))
    return (struct bfd_hash_entry *) ret;


  ret = ((struct mips_elf_link_hash_entry *)
  _bfd_elf_link_hash_newfunc ((struct bfd_hash_entry *) ret,
         table, string));
  if (ret != ((void*)0))
    {

      memset (&ret->esym, 0, sizeof (EXTR));


      ret->esym.ifd = -2;
      ret->possibly_dynamic_relocs = 0;
      ret->readonly_reloc = FALSE;
      ret->no_fn_stub = FALSE;
      ret->fn_stub = ((void*)0);
      ret->need_fn_stub = FALSE;
      ret->call_stub = ((void*)0);
      ret->call_fp_stub = ((void*)0);
      ret->forced_local = FALSE;
      ret->is_branch_target = FALSE;
      ret->is_relocation_target = FALSE;
      ret->tls_type = GOT_NORMAL;
    }

  return (struct bfd_hash_entry *) ret;
}
