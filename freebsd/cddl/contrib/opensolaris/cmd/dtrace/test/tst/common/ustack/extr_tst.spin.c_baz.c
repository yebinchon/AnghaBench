
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int count ;
 int getpid () ;

int
baz(int a)
{
 (void) getpid();
 while (count != -1) {
  count++;
  a++;
 }

 return (a + 1);
}
