
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
print_u(uint32_t *x)
{
 size_t k;

 if (x[0] == 0) {
  printf(" 00000000 (0, 0)");
  return;
 }
 for (k = (x[0] + 31) >> 5; k > 0; k --) {
  printf(" %08lX", (unsigned long)x[k]);
 }
 printf(" (%u, %u)", (unsigned)(x[0] >> 5), (unsigned)(x[0] & 31));
}
