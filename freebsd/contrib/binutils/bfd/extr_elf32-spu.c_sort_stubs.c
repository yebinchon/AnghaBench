
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int string; } ;
struct spu_stub_hash_entry {scalar_t__ target_off; TYPE_2__ root; TYPE_1__* target_section; } ;
typedef scalar_t__ bfd_signed_vma ;
struct TYPE_8__ {scalar_t__ vma; } ;
struct TYPE_7__ {int ovl_index; } ;
struct TYPE_5__ {scalar_t__ output_offset; TYPE_4__* output_section; } ;


 int BFD_ASSERT (int) ;
 TYPE_3__* spu_elf_section_data (TYPE_4__*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
sort_stubs (const void *a, const void *b)
{
  const struct spu_stub_hash_entry *const *sa = a;
  const struct spu_stub_hash_entry *const *sb = b;
  int i;
  bfd_signed_vma d;

  i = spu_elf_section_data ((*sa)->target_section->output_section)->ovl_index;
  i -= spu_elf_section_data ((*sb)->target_section->output_section)->ovl_index;
  if (i != 0)
    return i;

  d = ((*sa)->target_section->output_section->vma
       + (*sa)->target_section->output_offset
       + (*sa)->target_off
       - (*sb)->target_section->output_section->vma
       - (*sb)->target_section->output_offset
       - (*sb)->target_off);
  if (d != 0)
    return d < 0 ? -1 : 1;


  i = strcmp ((*sb)->root.string, (*sa)->root.string);
  BFD_ASSERT (i != 0);
  return i;
}
