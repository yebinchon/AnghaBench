
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
go(void)
{
 int i, j, total = 0;

 for (i = 0; i < 10; i++) {
  for (j = 0; j < 10; j++) {
   total += i * j;
  }
 }

 return (total);
}
