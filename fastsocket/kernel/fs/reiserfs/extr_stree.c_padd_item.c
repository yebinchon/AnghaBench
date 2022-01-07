
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void padd_item(char *item, int total_length, int length)
{
 int i;

 for (i = total_length; i > length;)
  item[--i] = 0;
}
