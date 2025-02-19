
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ offset; } ;
struct elf_link_sort_rela {scalar_t__ type; TYPE_2__* rela; TYPE_1__ u; } ;
struct TYPE_4__ {scalar_t__ r_offset; } ;


 scalar_t__ reloc_class_copy ;
 scalar_t__ reloc_class_plt ;

__attribute__((used)) static int
elf_link_sort_cmp2 (const void *A, const void *B)
{
  const struct elf_link_sort_rela *a = A;
  const struct elf_link_sort_rela *b = B;
  int copya, copyb;

  if (a->u.offset < b->u.offset)
    return -1;
  if (a->u.offset > b->u.offset)
    return 1;
  copya = (a->type == reloc_class_copy) * 2 + (a->type == reloc_class_plt);
  copyb = (b->type == reloc_class_copy) * 2 + (b->type == reloc_class_plt);
  if (copya < copyb)
    return -1;
  if (copya > copyb)
    return 1;
  if (a->rela->r_offset < b->rela->r_offset)
    return -1;
  if (a->rela->r_offset > b->rela->r_offset)
    return 1;
  return 0;
}
