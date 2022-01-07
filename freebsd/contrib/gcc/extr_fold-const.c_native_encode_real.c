
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BITS_PER_UNIT ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 int GET_MODE_SIZE (int ) ;
 int TREE_REAL_CST_PTR (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;
 int real_to_target (long*,int ,int ) ;

__attribute__((used)) static int
native_encode_real (tree expr, unsigned char *ptr, int len)
{
  tree type = TREE_TYPE (expr);
  int total_bytes = GET_MODE_SIZE (TYPE_MODE (type));
  int byte, offset, word, words, bitpos;
  unsigned char value;




  long tmp[6];

  if (total_bytes > len)
    return 0;
  words = 32 / UNITS_PER_WORD;

  real_to_target (tmp, TREE_REAL_CST_PTR (expr), TYPE_MODE (type));

  for (bitpos = 0; bitpos < total_bytes * BITS_PER_UNIT;
       bitpos += BITS_PER_UNIT)
    {
      byte = (bitpos / BITS_PER_UNIT) & 3;
      value = (unsigned char) (tmp[bitpos / 32] >> (bitpos & 31));

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
      ptr[offset + ((bitpos / BITS_PER_UNIT) & ~3)] = value;
    }
  return total_bytes;
}
