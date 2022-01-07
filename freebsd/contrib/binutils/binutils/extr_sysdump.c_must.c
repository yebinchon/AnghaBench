
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getone (int) ;
 int printf (char*,int) ;

__attribute__((used)) static void
must (int x)
{
  if (!getone (x))
    printf ("WANTED %x!!\n", x);
}
