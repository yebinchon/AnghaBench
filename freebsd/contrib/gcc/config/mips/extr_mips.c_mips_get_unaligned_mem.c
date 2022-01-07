
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int BITS_PER_UNIT ;
 int BLKmode ;
 int GEN_INT (unsigned int) ;
 unsigned int MEM_ALIGN (int ) ;
 int MEM_P (int ) ;
 int QImode ;
 int TARGET_64BIT ;
 scalar_t__ TARGET_BIG_ENDIAN ;
 int adjust_address (int ,int ,unsigned int) ;
 int set_mem_size (int ,int ) ;

__attribute__((used)) static bool
mips_get_unaligned_mem (rtx *op, unsigned int width, int bitpos,
   rtx *left, rtx *right)
{
  rtx first, last;



  if (!MEM_P (*op))
    return 0;


  if (width != 32 && (!TARGET_64BIT || width != 64))
    return 0;




  if (bitpos % BITS_PER_UNIT != 0)
    return 0;



  if (MEM_ALIGN (*op) >= width)
    return 0;



  *op = adjust_address (*op, BLKmode, 0);
  set_mem_size (*op, GEN_INT (width / BITS_PER_UNIT));




  first = adjust_address (*op, QImode, 0);
  last = adjust_address (*op, QImode, width / BITS_PER_UNIT - 1);



  if (TARGET_BIG_ENDIAN)
    *left = first, *right = last;
  else
    *left = last, *right = first;

  return 1;
}
