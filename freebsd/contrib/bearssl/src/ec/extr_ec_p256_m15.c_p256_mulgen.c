
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int p256_jacobian ;


 int CCOPY (int,int *,int *,int) ;
 int NEQ (int,int ) ;
 int lookup_Gwin (int *,int) ;
 int memset (int *,int ,int) ;
 int p256_add_mixed (int *,int *) ;
 int p256_double (int *) ;

__attribute__((used)) static void
p256_mulgen(p256_jacobian *P, const unsigned char *x, size_t xlen)
{
 p256_jacobian Q;
 uint32_t qz;

 memset(&Q, 0, sizeof Q);
 qz = 1;
 while (xlen -- > 0) {
  int k;
  unsigned bx;

  bx = *x ++;
  for (k = 0; k < 2; k ++) {
   uint32_t bits;
   uint32_t bnz;
   p256_jacobian T, U;

   p256_double(&Q);
   p256_double(&Q);
   p256_double(&Q);
   p256_double(&Q);
   bits = (bx >> 4) & 0x0F;
   bnz = NEQ(bits, 0);
   lookup_Gwin(&T, bits);
   U = Q;
   p256_add_mixed(&U, &T);
   CCOPY(bnz & qz, &Q, &T, sizeof Q);
   CCOPY(bnz & ~qz, &Q, &U, sizeof Q);
   qz &= ~bnz;
   bx <<= 4;
  }
 }
 *P = Q;
}
