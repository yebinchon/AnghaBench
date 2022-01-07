
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offsetT ;



__attribute__((used)) static inline int
sizeof_sleb128 (offsetT value)
{
  register int size = 0;
  register unsigned byte;

  do
    {
      byte = (value & 0x7f);



      value = (value >> 7) | ~(-(offsetT)1 >> 7);
      size += 1;
    }
  while (!(((value == 0) && ((byte & 0x40) == 0))
    || ((value == -1) && ((byte & 0x40) != 0))));

  return size;
}
