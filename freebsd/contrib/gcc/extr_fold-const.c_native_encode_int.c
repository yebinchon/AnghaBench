
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BITS_PER_UNIT ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 int GET_MODE_SIZE (int ) ;
 int HOST_BITS_PER_WIDE_INT ;
 int TREE_INT_CST_HIGH (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int UNITS_PER_WORD ;
 scalar_t__ WORDS_BIG_ENDIAN ;

__attribute__((used)) static int
native_encode_int (tree expr, unsigned char *ptr, int len)
{
  tree type = TREE_TYPE (expr);
  int total_bytes = GET_MODE_SIZE (TYPE_MODE (type));
  int byte, offset, word, words;
  unsigned char value;

  if (total_bytes > len)
    return 0;
  words = total_bytes / UNITS_PER_WORD;

  for (byte = 0; byte < total_bytes; byte++)
    {
      int bitpos = byte * BITS_PER_UNIT;
      if (bitpos < HOST_BITS_PER_WIDE_INT)
 value = (unsigned char) (TREE_INT_CST_LOW (expr) >> bitpos);
      else
 value = (unsigned char) (TREE_INT_CST_HIGH (expr)
     >> (bitpos - HOST_BITS_PER_WIDE_INT));

      if (total_bytes > UNITS_PER_WORD)
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
 offset = BYTES_BIG_ENDIAN ? (total_bytes - 1) - byte : byte;
      ptr[offset] = value;
    }
  return total_bytes;
}
