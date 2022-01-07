
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;


 int memmove (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 int mpz_export (unsigned char*,size_t*,int,int,int ,int ,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_z(mpz_t z)
{
 unsigned char zb[1000];
 size_t zlen, k;

 mpz_export(zb, &zlen, 1, 1, 0, 0, z);
 if (zlen == 0) {
  printf(" 00");
  return;
 }
 if ((zlen & 3) != 0) {
  k = 4 - (zlen & 3);
  memmove(zb + k, zb, zlen);
  memset(zb, 0, k);
  zlen += k;
 }
 for (k = 0; k < zlen; k += 4) {
  printf(" %02X%02X%02X%02X",
   zb[k], zb[k + 1], zb[k + 2], zb[k + 3]);
 }
}
