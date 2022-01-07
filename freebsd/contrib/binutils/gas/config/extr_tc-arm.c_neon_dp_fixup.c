
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ thumb_mode ;

__attribute__((used)) static unsigned
neon_dp_fixup (unsigned i)
{
  if (thumb_mode)
    {

      if (i & (1 << 24))
        i |= 1 << 28;

      i &= ~(1 << 24);

      i |= 0xef000000;
    }
  else
    i |= 0xf2000000;

  return i;
}
