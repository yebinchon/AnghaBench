
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ BYTES_BIG_ENDIAN ;
 int GET_MODE_SIZE (int) ;
 int UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;

unsigned int
subreg_lowpart_offset (enum machine_mode outermode, enum machine_mode innermode)
{
  unsigned int offset = 0;
  int difference = (GET_MODE_SIZE (innermode) - GET_MODE_SIZE (outermode));

  if (difference > 0)
    {
      if (WORDS_BIG_ENDIAN)
 offset += (difference / UNITS_PER_WORD) * UNITS_PER_WORD;
      if (BYTES_BIG_ENDIAN)
 offset += difference % UNITS_PER_WORD;
    }

  return offset;
}
