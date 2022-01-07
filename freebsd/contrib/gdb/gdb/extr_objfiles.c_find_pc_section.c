
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obj_section {int dummy; } ;
typedef int CORE_ADDR ;


 int find_pc_mapped_section (int ) ;
 struct obj_section* find_pc_sect_section (int ,int ) ;

struct obj_section *
find_pc_section (CORE_ADDR pc)
{
  return find_pc_sect_section (pc, find_pc_mapped_section (pc));
}
