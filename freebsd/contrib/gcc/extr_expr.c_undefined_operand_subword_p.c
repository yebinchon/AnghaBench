
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int word_mode ;

__attribute__((used)) static bool
undefined_operand_subword_p (rtx op, int i)
{
  enum machine_mode innermode, innermostmode;
  int offset;
  if (GET_CODE (op) != SUBREG)
    return 0;
  innermode = GET_MODE (op);
  innermostmode = GET_MODE (SUBREG_REG (op));
  offset = i * UNITS_PER_WORD + SUBREG_BYTE (op);




  if (SUBREG_BYTE (op) == 0
      && GET_MODE_SIZE (innermostmode) < GET_MODE_SIZE (innermode))
    {
      int difference = (GET_MODE_SIZE (innermostmode) - GET_MODE_SIZE (innermode));
      if (WORDS_BIG_ENDIAN)
 offset += (difference / UNITS_PER_WORD) * UNITS_PER_WORD;
      if (BYTES_BIG_ENDIAN)
 offset += difference % UNITS_PER_WORD;
    }
  if (offset >= GET_MODE_SIZE (innermostmode)
      || offset <= -GET_MODE_SIZE (word_mode))
    return 1;
  return 0;
}
