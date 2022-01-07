
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offsetT ;



__attribute__((used)) static inline int
output_sleb128 (char *p, offsetT value)
{
  register char *orig = p;
  register int more;

  do
    {
      unsigned byte = (value & 0x7f);




      value = (value >> 7) | ~(-(offsetT)1 >> 7);

      more = !((((value == 0) && ((byte & 0x40) == 0))
  || ((value == -1) && ((byte & 0x40) != 0))));
      if (more)
 byte |= 0x80;

      *p++ = byte;
    }
  while (more);

  return p - orig;
}
