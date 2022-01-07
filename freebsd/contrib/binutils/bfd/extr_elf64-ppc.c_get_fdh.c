
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ppc_link_hash_table {int elf; } ;
struct TYPE_4__ {char* string; } ;
struct TYPE_5__ {TYPE_1__ root; } ;
struct TYPE_6__ {TYPE_2__ root; } ;
struct ppc_link_hash_entry {int is_func_descriptor; int is_func; struct ppc_link_hash_entry* oh; TYPE_3__ elf; } ;


 int FALSE ;
 scalar_t__ elf_link_hash_lookup (int *,char const*,int ,int ,int ) ;

__attribute__((used)) static struct ppc_link_hash_entry *
get_fdh (struct ppc_link_hash_entry *fh, struct ppc_link_hash_table *htab)
{
  struct ppc_link_hash_entry *fdh = fh->oh;

  if (fdh == ((void*)0))
    {
      const char *fd_name = fh->elf.root.root.string + 1;

      fdh = (struct ppc_link_hash_entry *)
 elf_link_hash_lookup (&htab->elf, fd_name, FALSE, FALSE, FALSE);
      if (fdh != ((void*)0))
 {
   fdh->is_func_descriptor = 1;
   fdh->oh = fh;
   fh->is_func = 1;
   fh->oh = fdh;
 }
    }

  return fdh;
}
