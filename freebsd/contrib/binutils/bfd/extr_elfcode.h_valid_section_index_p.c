
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 unsigned int SHN_HIOS ;
 unsigned int SHN_HIRESERVE ;
 unsigned int SHN_LOPROC ;
 unsigned int SHN_LORESERVE ;

__attribute__((used)) static inline bfd_boolean
valid_section_index_p (unsigned index, unsigned num_sections)
{

  if (index < SHN_LORESERVE || index > SHN_HIRESERVE)
    return index < num_sections;
  return (index >= SHN_LOPROC && index <= SHN_HIOS);
}
