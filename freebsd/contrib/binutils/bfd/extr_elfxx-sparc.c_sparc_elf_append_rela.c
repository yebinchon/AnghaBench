
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct elf_backend_data {TYPE_1__* s; } ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_5__ {int reloc_count; int * contents; } ;
typedef TYPE_2__ asection ;
struct TYPE_4__ {int sizeof_rela; int (* swap_reloca_out ) (int *,int *,int *) ;} ;
typedef int Elf_Internal_Rela ;


 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (int *,int *,int *) ;

__attribute__((used)) static void
sparc_elf_append_rela (bfd *abfd, asection *s, Elf_Internal_Rela *rel)
{
  const struct elf_backend_data *bed;
  bfd_byte *loc;

  bed = get_elf_backend_data (abfd);
  loc = s->contents + (s->reloc_count++ * bed->s->sizeof_rela);
  bed->s->swap_reloca_out (abfd, rel, loc);
}
