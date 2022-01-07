
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
longlongendswap (unsigned char *a)
{
  int i, j;
  unsigned char x;
  i = 0;
  j = 7;
  while (i < 4)
    {
      x = *(a + i);
      *(a + i) = *(a + j);
      *(a + j) = x;
      i++, j--;
    }
}
