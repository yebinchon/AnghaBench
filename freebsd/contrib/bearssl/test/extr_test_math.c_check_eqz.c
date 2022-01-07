
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mpz_t ;
struct TYPE_2__ {int (* encode ) (unsigned char*,size_t,int*) ;} ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 TYPE_1__* impl ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,size_t) ;
 int mpz_export (unsigned char*,size_t*,int,int,int ,int ,int ) ;
 int print_u (int*) ;
 int print_z (int ) ;
 int printf (char*,...) ;
 int stub1 (unsigned char*,size_t,int*) ;

__attribute__((used)) static void
check_eqz(uint32_t *x, mpz_t z)
{
 unsigned char xb[1000];
 unsigned char zb[1000];
 size_t xlen, zlen;
 int good;

 xlen = ((x[0] + 31) & ~(uint32_t)31) >> 3;
 impl->encode(xb, xlen, x);
 mpz_export(zb, &zlen, 1, 1, 0, 0, z);
 good = 1;
 if (xlen < zlen) {
  good = 0;
 } else if (xlen > zlen) {
  size_t u;

  for (u = xlen; u > zlen; u --) {
   if (xb[xlen - u] != 0) {
    good = 0;
    break;
   }
  }
 }
 good = good && memcmp(xb + xlen - zlen, zb, zlen) == 0;
 if (!good) {
  size_t u;

  printf("Mismatch:\n");
  printf("  x = ");
  print_u(x);
  printf("\n");
  printf("  ex = ");
  for (u = 0; u < xlen; u ++) {
   printf("%02X", xb[u]);
  }
  printf("\n");
  printf("  z = ");
  print_z(z);
  printf("\n");
  exit(EXIT_FAILURE);
 }
}
