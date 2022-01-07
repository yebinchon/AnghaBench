
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum floatformat_byteorders { ____Placeholder_floatformat_byteorders } floatformat_byteorders ;


 unsigned int FLOATFORMAT_CHAR_BIT ;
 int floatformat_little ;
 int floatformat_littlebyte_bigword ;

__attribute__((used)) static void
put_field (unsigned char *data, enum floatformat_byteorders order,
    unsigned int total_len, unsigned int start, unsigned int len,
    unsigned long stuff_to_put)
{
  unsigned int cur_byte;
  int cur_bitshift;


  if (order == floatformat_little || order == floatformat_littlebyte_bigword)
    {
      int excess = FLOATFORMAT_CHAR_BIT - (total_len % FLOATFORMAT_CHAR_BIT);
      cur_byte = (total_len / FLOATFORMAT_CHAR_BIT)
                 - ((start + len + excess) / FLOATFORMAT_CHAR_BIT);
      cur_bitshift = ((start + len + excess) % FLOATFORMAT_CHAR_BIT)
                     - FLOATFORMAT_CHAR_BIT;
    }
  else
    {
      cur_byte = (start + len) / FLOATFORMAT_CHAR_BIT;
      cur_bitshift =
 ((start + len) % FLOATFORMAT_CHAR_BIT) - FLOATFORMAT_CHAR_BIT;
    }
  if (cur_bitshift > -FLOATFORMAT_CHAR_BIT)
    {
      *(data + cur_byte) &=
 ~(((1 << ((start + len) % FLOATFORMAT_CHAR_BIT)) - 1)
   << (-cur_bitshift));
      *(data + cur_byte) |=
 (stuff_to_put & ((1 << FLOATFORMAT_CHAR_BIT) - 1)) << (-cur_bitshift);
    }
  cur_bitshift += FLOATFORMAT_CHAR_BIT;
  if (order == floatformat_little || order == floatformat_littlebyte_bigword)
    ++cur_byte;
  else
    --cur_byte;


  while (cur_bitshift < len)
    {
      if (len - cur_bitshift < FLOATFORMAT_CHAR_BIT)
 {

   *(data + cur_byte) &=
     ~((1 << (len - cur_bitshift)) - 1);
   *(data + cur_byte) |= (stuff_to_put >> cur_bitshift);
 }
      else
 *(data + cur_byte) = ((stuff_to_put >> cur_bitshift)
         & ((1 << FLOATFORMAT_CHAR_BIT) - 1));
      cur_bitshift += FLOATFORMAT_CHAR_BIT;
      if (order == floatformat_little || order == floatformat_littlebyte_bigword)
 ++cur_byte;
      else
 --cur_byte;
    }
}
