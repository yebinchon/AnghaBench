
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int tmp ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 int BITS_PER_UNIT ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 int GET_MODE_SIZE (int) ;
 int NULL_TREE ;
 int TYPE_MODE (int ) ;
 int UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int build_real (int ,int ) ;
 int memset (long*,int ,int) ;
 int real_from_target (int *,long*,int) ;

__attribute__((used)) static tree
native_interpret_real (tree type, unsigned char *ptr, int len)
{
  enum machine_mode mode = TYPE_MODE (type);
  int total_bytes = GET_MODE_SIZE (mode);
  int byte, offset, word, words, bitpos;
  unsigned char value;



  REAL_VALUE_TYPE r;
  long tmp[6];

  total_bytes = GET_MODE_SIZE (TYPE_MODE (type));
  if (total_bytes > len || total_bytes > 24)
    return NULL_TREE;
  words = 32 / UNITS_PER_WORD;

  memset (tmp, 0, sizeof (tmp));
  for (bitpos = 0; bitpos < total_bytes * BITS_PER_UNIT;
       bitpos += BITS_PER_UNIT)
    {
      byte = (bitpos / BITS_PER_UNIT) & 3;
      if (UNITS_PER_WORD < 4)
 {
   word = byte / UNITS_PER_WORD;
   if (WORDS_BIG_ENDIAN)
     word = (words - 1) - word;
   offset = word * UNITS_PER_WORD;
   if (BYTES_BIG_ENDIAN)
     offset += (UNITS_PER_WORD - 1) - (byte % UNITS_PER_WORD);
   else
     offset += byte % UNITS_PER_WORD;
 }
      else
 offset = BYTES_BIG_ENDIAN ? 3 - byte : byte;
      value = ptr[offset + ((bitpos / BITS_PER_UNIT) & ~3)];

      tmp[bitpos / 32] |= (unsigned long)value << (bitpos & 31);
    }

  real_from_target (&r, tmp, mode);
  return build_real (type, r);
}
