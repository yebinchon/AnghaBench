
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
uleb128_size (unsigned int i)
{
  int size;
  size = 1;
  while (i >= 0x80)
    {
      i >>= 7;
      size++;
    }
  return size;
}
