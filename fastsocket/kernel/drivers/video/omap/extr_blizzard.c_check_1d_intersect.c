
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int check_1d_intersect(int a1, int a2, int b1, int b2)
{
 if (a2 <= b1 || b2 <= a1)
  return 0;
 return 1;
}
