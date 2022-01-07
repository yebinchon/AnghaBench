
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _Unwind_Word ;



__attribute__((used)) static const unsigned char *
read_uleb128 (const unsigned char *p, _Unwind_Word *val)
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

  *val = result;
  return p;
}
