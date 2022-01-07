
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
table_convert_char (void *baton, int from, int *to)
{
  int *table = (int *) baton;

  if (0 <= from && from <= 255
      && table[from] != -1)
    {
      *to = table[from];
      return 1;
    }
  else
    return 0;
}
