
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int result ;
typedef int _Unwind_Word ;
typedef scalar_t__ _Unwind_Sword ;



__attribute__((used)) static const unsigned char *
read_sleb128 (const unsigned char *p, _Unwind_Sword *val)
{
  unsigned int shift = 0;
  unsigned char byte;
  _Unwind_Word result;

  result = 0;
  do
    {
      byte = *p++;
      result |= ((_Unwind_Word)byte & 0x7f) << shift;
      shift += 7;
    }
  while (byte & 0x80);


  if (shift < 8 * sizeof(result) && (byte & 0x40) != 0)
    result |= -(((_Unwind_Word)1L) << shift);

  *val = (_Unwind_Sword) result;
  return p;
}
