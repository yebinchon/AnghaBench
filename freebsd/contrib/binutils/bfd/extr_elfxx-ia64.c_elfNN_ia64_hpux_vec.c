
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_target ;
typedef int bfd_boolean ;



__attribute__((used)) static bfd_boolean
elfNN_ia64_hpux_vec (const bfd_target *vec)
{
  extern const bfd_target bfd_elfNN_ia64_hpux_big_vec;
  return (vec == & bfd_elfNN_ia64_hpux_big_vec);
}
