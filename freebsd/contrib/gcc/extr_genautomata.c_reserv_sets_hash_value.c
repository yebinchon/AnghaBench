
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set_el_t ;
typedef int* reserv_sets_t ;


 int CHAR_BIT ;
 int els_in_reservs ;

__attribute__((used)) static unsigned
reserv_sets_hash_value (reserv_sets_t reservs)
{
  set_el_t hash_value;
  unsigned result;
  int reservs_num, i;
  set_el_t *reserv_ptr;

  hash_value = 0;
  reservs_num = els_in_reservs;
  reserv_ptr = reservs;
  i = 0;
  while (reservs_num != 0)
    {
      reservs_num--;
      hash_value += ((*reserv_ptr >> i)
       | (*reserv_ptr << (sizeof (set_el_t) * CHAR_BIT - i)));
      i++;
      if (i == sizeof (set_el_t) * CHAR_BIT)
 i = 0;
      reserv_ptr++;
    }
  if (sizeof (set_el_t) <= sizeof (unsigned))
    return hash_value;
  result = 0;
  for (i = sizeof (set_el_t); i > 0; i -= sizeof (unsigned) - 1)
    {
      result += (unsigned) hash_value;
      hash_value >>= (sizeof (unsigned) - 1) * CHAR_BIT;
    }
  return result;
}
