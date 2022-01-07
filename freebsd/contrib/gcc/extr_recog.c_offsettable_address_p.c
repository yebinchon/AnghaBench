
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int BIGGEST_ALIGNMENT ;
 unsigned int BITS_PER_UNIT ;
 int BLKmode ;
 scalar_t__ CONSTANT_ADDRESS_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 unsigned int GET_MODE_ALIGNMENT (int) ;
 unsigned int GET_MODE_SIZE (int) ;
 scalar_t__ GET_RTX_CLASS (int) ;
 scalar_t__ LO_SUM ;
 int PLUS ;
 int QImode ;
 scalar_t__ RTX_AUTOINC ;
 int XEXP (int ,int) ;
 int * find_constant_term_loc (int *) ;
 int gen_rtx_LO_SUM (int ,int ,int ) ;
 int memory_address_p (int,int ) ;
 scalar_t__ mode_dependent_address_p (int ) ;
 int plus_constant (int ,unsigned int) ;
 int strict_memory_address_p (int,int ) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

int
offsettable_address_p (int strictp, enum machine_mode mode, rtx y)
{
  enum rtx_code ycode = GET_CODE (y);
  rtx z;
  rtx y1 = y;
  rtx *y2;
  int (*addressp) (enum machine_mode, rtx) =
    (strictp ? strict_memory_address_p : memory_address_p);
  unsigned int mode_sz = GET_MODE_SIZE (mode);

  if (CONSTANT_ADDRESS_P (y))
    return 1;




  if (mode_dependent_address_p (y))
    return 0;





  if (mode_sz == 0)
    mode_sz = BIGGEST_ALIGNMENT / BITS_PER_UNIT;




  if ((ycode == PLUS) && (y2 = find_constant_term_loc (&y1)))
    {
      int good;

      y1 = *y2;
      *y2 = plus_constant (*y2, mode_sz - 1);


      good = (*addressp) (QImode, y);


      *y2 = y1;
      return good;
    }

  if (GET_RTX_CLASS (ycode) == RTX_AUTOINC)
    return 0;






  if (GET_CODE (y) == LO_SUM
      && mode != BLKmode
      && mode_sz <= GET_MODE_ALIGNMENT (mode) / BITS_PER_UNIT)
    z = gen_rtx_LO_SUM (GET_MODE (y), XEXP (y, 0),
   plus_constant (XEXP (y, 1), mode_sz - 1));
  else
    z = plus_constant (y, mode_sz - 1);



  return (*addressp) (QImode, z);
}
