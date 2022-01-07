
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_section {int section_mem_map; } ;


 int SECTION_NID_SHIFT ;

__attribute__((used)) static inline int sparse_early_nid(struct mem_section *section)
{
 return (section->section_mem_map >> SECTION_NID_SHIFT);
}
