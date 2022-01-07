
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_CPPCHAR_T ;
 int CHAR_BIT ;
 size_t MIN (size_t,int ) ;

__attribute__((used)) static inline size_t
width_to_mask (size_t width)
{
  width = MIN (width, BITS_PER_CPPCHAR_T);
  if (width >= CHAR_BIT * sizeof (size_t))
    return ~(size_t) 0;
  else
    return ((size_t) 1 << width) - 1;
}
