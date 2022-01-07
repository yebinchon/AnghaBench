
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ppc_link_hash_table {int elf; } ;
struct TYPE_3__ {char* string; } ;
struct TYPE_4__ {TYPE_1__ root; } ;
struct elf_link_hash_entry {TYPE_2__ root; } ;
struct ppc_link_hash_entry {struct elf_link_hash_entry elf; struct ppc_link_hash_entry* oh; scalar_t__ is_func_descriptor; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int _bfd_elf_link_hash_hide_symbol (struct bfd_link_info*,struct elf_link_hash_entry*,int ) ;
 scalar_t__ elf_link_hash_lookup (int *,char const*,int ,int ,int ) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;
 int strlen (char*) ;

__attribute__((used)) static void
ppc64_elf_hide_symbol (struct bfd_link_info *info,
         struct elf_link_hash_entry *h,
         bfd_boolean force_local)
{
  struct ppc_link_hash_entry *eh;
  _bfd_elf_link_hash_hide_symbol (info, h, force_local);

  eh = (struct ppc_link_hash_entry *) h;
  if (eh->is_func_descriptor)
    {
      struct ppc_link_hash_entry *fh = eh->oh;

      if (fh == ((void*)0))
 {
   const char *p, *q;
   struct ppc_link_hash_table *htab;
   char save;
   p = eh->elf.root.root.string - 1;
   save = *p;
   *(char *) p = '.';
   htab = ppc_hash_table (info);
   fh = (struct ppc_link_hash_entry *)
     elf_link_hash_lookup (&htab->elf, p, FALSE, FALSE, FALSE);
   *(char *) p = save;





   if (fh == ((void*)0))
     {
       q = eh->elf.root.root.string + strlen (eh->elf.root.root.string);
       while (q >= eh->elf.root.root.string && *q == *p)
  --q, --p;
       if (q < eh->elf.root.root.string && *p == '.')
  fh = (struct ppc_link_hash_entry *)
    elf_link_hash_lookup (&htab->elf, p, FALSE, FALSE, FALSE);
     }
   if (fh != ((void*)0))
     {
       eh->oh = fh;
       fh->oh = eh;
     }
 }
      if (fh != ((void*)0))
 _bfd_elf_link_hash_hide_symbol (info, &fh->elf, force_local);
    }
}
