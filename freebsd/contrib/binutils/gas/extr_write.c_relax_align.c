
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int relax_addressT ;


 scalar_t__ linkrelax ;

__attribute__((used)) static relax_addressT
relax_align (register relax_addressT address,
      register int alignment )
{
  relax_addressT mask;
  relax_addressT new_address;

  mask = ~((~0) << alignment);
  new_address = (address + mask) & (~mask);






  return (new_address - address);
}
