
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum neon_el_type { ____Placeholder_neon_el_type } neon_el_type ;


 int N_MAX_NONSPECIAL ;
 scalar_t__ SUCCESS ;
 scalar_t__ el_type_of_type_chk (int*,unsigned int*,unsigned int) ;
 int neon_modify_type_size (unsigned int,int*,unsigned int*) ;
 unsigned int type_chk_of_el_type (int,unsigned int) ;

__attribute__((used)) static unsigned
modify_types_allowed (unsigned allowed, unsigned mods)
{
  unsigned size;
  enum neon_el_type type;
  unsigned destmask;
  int i;

  destmask = 0;

  for (i = 1; i <= N_MAX_NONSPECIAL; i <<= 1)
    {
      if (el_type_of_type_chk (&type, &size, allowed & i) == SUCCESS)
        {
          neon_modify_type_size (mods, &type, &size);
          destmask |= type_chk_of_el_type (type, size);
        }
    }

  return destmask;
}
