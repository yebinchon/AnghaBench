
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void translate_bytes(const unsigned char *table, unsigned char *buff, int n)
{
 unsigned long i;

 if (n <= 0)
  return;

 for (i = 0; i < n; ++i)
  buff[i] = table[buff[i]];
}
