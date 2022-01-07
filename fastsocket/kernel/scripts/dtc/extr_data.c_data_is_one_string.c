
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int len; char* val; } ;



int data_is_one_string(struct data d)
{
 int i;
 int len = d.len;

 if (len == 0)
  return 0;

 for (i = 0; i < len-1; i++)
  if (d.val[i] == '\0')
   return 0;

 if (d.val[len-1] != '\0')
  return 0;

 return 1;
}
