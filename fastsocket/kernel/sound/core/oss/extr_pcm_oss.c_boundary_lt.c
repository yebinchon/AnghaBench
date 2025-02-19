
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int boundary_lt(unsigned int a, int adir,
         unsigned int b, int bdir)
{
 if (adir < 0) {
  a--;
  adir = 1;
 } else if (adir > 0)
  adir = 1;
 if (bdir < 0) {
  b--;
  bdir = 1;
 } else if (bdir > 0)
  bdir = 1;
 return a < b || (a == b && adir < bdir);
}
