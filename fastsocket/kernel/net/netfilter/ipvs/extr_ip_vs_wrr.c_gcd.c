
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int gcd(int a, int b)
{
 int c;

 while ((c = a % b)) {
  a = b;
  b = c;
 }
 return b;
}
