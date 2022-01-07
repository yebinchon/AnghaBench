
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 int gcd (int,int) ;

__attribute__((used)) static int
lcm (int a, int b)
{
  return (abs (a) * abs (b) / gcd (a, b));
}
