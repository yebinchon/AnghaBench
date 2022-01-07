
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;



int cclcmp (const void *a, const void *b)
{
  if (!*(const Char *) a)
 return 1;
  else
 if (!*(const Char *) b)
   return - 1;
 else
   return *(const Char *) a - *(const Char *) b;
}
