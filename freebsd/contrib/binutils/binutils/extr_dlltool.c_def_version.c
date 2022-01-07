
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,int) ;

void
def_version (int major, int minor)
{
  printf ("VERSION %d.%d\n", major, minor);
}
