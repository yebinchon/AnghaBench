
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int BIGGEST_ALIGNMENT ;
 int BITS_PER_UNIT ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;
 int PATTERN (int ) ;
 int exact_log2 (int) ;

__attribute__((used)) static int
final_addr_vec_align (rtx addr_vec)
{
  int align = GET_MODE_SIZE (GET_MODE (PATTERN (addr_vec)));

  if (align > BIGGEST_ALIGNMENT / BITS_PER_UNIT)
    align = BIGGEST_ALIGNMENT / BITS_PER_UNIT;
  return exact_log2 (align);

}
