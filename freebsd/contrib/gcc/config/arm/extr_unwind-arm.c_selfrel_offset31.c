
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _uw ;



__attribute__((used)) static inline _uw
selfrel_offset31 (const _uw *p)
{
  _uw offset;

  offset = *p;

  if (offset & (1 << 30))
    offset |= 1u << 31;
  else
    offset &= ~(1u << 31);

  return offset + (_uw) p;
}
