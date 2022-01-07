
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
writeBITS (int val, unsigned char *ptr, int *idx, int size)
{
  int byte = *idx / 8;
  int bit = *idx % 8;
  int old;

  *idx += size;

  old = ptr[byte];

  old &= ~((~0 >> (8 - bit - size)) & ((1 << size) - 1));

  old |= (val & ((1 << size) - 1)) << (8 - bit - size);
  ptr[byte] = old;
}
