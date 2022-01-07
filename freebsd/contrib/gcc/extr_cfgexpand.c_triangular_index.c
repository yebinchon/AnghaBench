
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
triangular_index (size_t i, size_t j)
{
  if (i < j)
    {
      size_t t;
      t = i, i = j, j = t;
    }
  return (i * (i + 1)) / 2 + j;
}
