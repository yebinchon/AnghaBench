
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int BITS_PER_UNIT ;
 unsigned int BITS_PER_WORD ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ GET_MODE_BITSIZE (int) ;
 unsigned int GET_MODE_SIZE (int) ;
 unsigned int UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int gcc_assert (int) ;

unsigned int
subreg_lsb_1 (enum machine_mode outer_mode,
       enum machine_mode inner_mode,
       unsigned int subreg_byte)
{
  unsigned int bitpos;
  unsigned int byte;
  unsigned int word;


  if (GET_MODE_BITSIZE (outer_mode) > GET_MODE_BITSIZE (inner_mode))
    return 0;

  if (WORDS_BIG_ENDIAN != BYTES_BIG_ENDIAN)


    gcc_assert (!((subreg_byte % UNITS_PER_WORD
    + GET_MODE_SIZE (outer_mode)) > UNITS_PER_WORD
    && (subreg_byte % UNITS_PER_WORD
        || GET_MODE_SIZE (outer_mode) % UNITS_PER_WORD)));

  if (WORDS_BIG_ENDIAN)
    word = (GET_MODE_SIZE (inner_mode)
     - (subreg_byte + GET_MODE_SIZE (outer_mode))) / UNITS_PER_WORD;
  else
    word = subreg_byte / UNITS_PER_WORD;
  bitpos = word * BITS_PER_WORD;

  if (BYTES_BIG_ENDIAN)
    byte = (GET_MODE_SIZE (inner_mode)
     - (subreg_byte + GET_MODE_SIZE (outer_mode))) % UNITS_PER_WORD;
  else
    byte = subreg_byte % UNITS_PER_WORD;
  bitpos += byte * BITS_PER_UNIT;

  return bitpos;
}
