
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockvector {int dummy; } ;
typedef int CORE_ADDR ;


 struct blockvector* blockvector_for_pc_sect (int ,int ,int*,int *) ;
 int find_pc_mapped_section (int ) ;

struct blockvector *
blockvector_for_pc (CORE_ADDR pc, int *pindex)
{
  return blockvector_for_pc_sect (pc, find_pc_mapped_section (pc),
      pindex, ((void*)0));
}
