
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int ) ;
 scalar_t__ GET_MODE_CLASS (int ) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 scalar_t__ MODE_INT ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 scalar_t__ TRULY_NOOP_TRUNCATION (int ,int ) ;
 int rtx_cost (int ,int) ;
 scalar_t__ subreg_lowpart_p (int ) ;

__attribute__((used)) static int
notreg_cost (rtx x, enum rtx_code outer)
{
  return ((GET_CODE (x) == SUBREG
    && REG_P (SUBREG_REG (x))
    && GET_MODE_CLASS (GET_MODE (x)) == MODE_INT
    && GET_MODE_CLASS (GET_MODE (SUBREG_REG (x))) == MODE_INT
    && (GET_MODE_SIZE (GET_MODE (x))
        < GET_MODE_SIZE (GET_MODE (SUBREG_REG (x))))
    && subreg_lowpart_p (x)
    && TRULY_NOOP_TRUNCATION (GET_MODE_BITSIZE (GET_MODE (x)),
         GET_MODE_BITSIZE (GET_MODE (SUBREG_REG (x)))))
   ? 0
   : rtx_cost (x, outer) * 2);
}
