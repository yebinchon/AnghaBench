
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_link_hash_table {int emit_stack_syms; scalar_t__ stack_analysis; } ;
struct bfd_link_info {TYPE_1__* callbacks; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int (* einfo ) (char*) ;} ;


 int bfd_elf_final_link (int *,struct bfd_link_info*) ;
 int spu_elf_stack_analysis (int *,struct bfd_link_info*,int ) ;
 struct spu_link_hash_table* spu_hash_table (struct bfd_link_info*) ;
 int stub1 (char*) ;

__attribute__((used)) static bfd_boolean
spu_elf_final_link (bfd *output_bfd, struct bfd_link_info *info)
{
  struct spu_link_hash_table *htab = spu_hash_table (info);

  if (htab->stack_analysis
      && !spu_elf_stack_analysis (output_bfd, info, htab->emit_stack_syms))
    info->callbacks->einfo ("%X%P: stack analysis error: %E\n");

  return bfd_elf_final_link (output_bfd, info);
}
