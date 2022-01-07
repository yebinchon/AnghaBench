
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long gcd(unsigned long a, unsigned long b)
{
 unsigned long r;
 if (a < b) {
  r = a;
  a = b;
  b = r;
 }
 while ((r = a % b) != 0) {
  a = b;
  b = r;
 }
 return b;
}
