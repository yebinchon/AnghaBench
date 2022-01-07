
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
getBITS (unsigned char *ptr, int *idx, int size, int max)
{
  int byte = *idx / 8;
  int bit = *idx % 8;

  if (byte >= max)
    return 0;

  *idx += size;

  return (ptr[byte] >> (8 - bit - size)) & ((1 << size) - 1);
}
