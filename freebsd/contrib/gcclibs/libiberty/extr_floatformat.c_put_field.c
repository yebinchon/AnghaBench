
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum floatformat_byteorders { ____Placeholder_floatformat_byteorders } floatformat_byteorders ;


 unsigned int FLOATFORMAT_CHAR_BIT ;
 int floatformat_little ;
 int min (unsigned int,unsigned int) ;

__attribute__((used)) static void
put_field (unsigned char *data, enum floatformat_byteorders order,
           unsigned int total_len, unsigned int start, unsigned int len,
           unsigned long stuff_to_put)
{
  unsigned int cur_byte;
  int lo_bit, hi_bit;
  int nextbyte = (order == floatformat_little) ? 1 : -1;


  start = total_len - (start + len);


  if (order == floatformat_little)
    cur_byte = start / FLOATFORMAT_CHAR_BIT;
  else
    cur_byte = (total_len - start - 1) / FLOATFORMAT_CHAR_BIT;

  lo_bit = start % FLOATFORMAT_CHAR_BIT;
  hi_bit = min (lo_bit + len, FLOATFORMAT_CHAR_BIT);

  do
    {
      unsigned char *byte_ptr = data + cur_byte;
      unsigned int bits = hi_bit - lo_bit;
      unsigned int mask = ((1 << bits) - 1) << lo_bit;
      *byte_ptr = (*byte_ptr & ~mask) | ((stuff_to_put << lo_bit) & mask);
      stuff_to_put >>= bits;
      len -= bits;
      cur_byte += nextbyte;
      lo_bit = 0;
      hi_bit = min (len, FLOATFORMAT_CHAR_BIT);
    }
  while (len != 0);
}
