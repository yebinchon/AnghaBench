
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FAIL ;

__attribute__((used)) static unsigned int
encode_thumb32_immediate (unsigned int val)
{
  unsigned int a, i;

  if (val <= 0xff)
    return val;

  for (i = 1; i <= 24; i++)
    {
      a = val >> i;
      if ((val & ~(0xff << i)) == 0)
 return ((val >> i) & 0x7f) | ((32 - i) << 7);
    }

  a = val & 0xff;
  if (val == ((a << 16) | a))
    return 0x100 | a;
  if (val == ((a << 24) | (a << 16) | (a << 8) | a))
    return 0x300 | a;

  a = val & 0xff00;
  if (val == ((a << 16) | a))
    return 0x200 | (a >> 8);

  return FAIL;
}
