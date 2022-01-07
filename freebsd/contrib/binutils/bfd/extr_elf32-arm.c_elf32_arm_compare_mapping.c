
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vma; } ;
typedef TYPE_1__ elf32_arm_section_map ;



__attribute__((used)) static int
elf32_arm_compare_mapping (const void * a, const void * b)
{
  return ((const elf32_arm_section_map *) a)->vma
  > ((const elf32_arm_section_map *) b)->vma;
}
