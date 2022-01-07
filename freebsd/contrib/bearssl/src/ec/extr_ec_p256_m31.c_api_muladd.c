
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int* z; } ;
typedef TYPE_1__ p256_jacobian ;


 int CCOPY (int,TYPE_1__*,TYPE_1__*,int) ;
 int EQ (int,int ) ;
 int p256_add (TYPE_1__*,TYPE_1__*) ;
 int p256_decode (TYPE_1__*,unsigned char const*,size_t) ;
 int p256_double (TYPE_1__*) ;
 int p256_encode (unsigned char*,TYPE_1__*) ;
 int p256_mul (TYPE_1__*,unsigned char const*,size_t) ;
 int p256_mulgen (TYPE_1__*,unsigned char const*,size_t) ;
 int p256_to_affine (TYPE_1__*) ;
 int reduce_final_f256 (int*) ;

__attribute__((used)) static uint32_t
api_muladd(unsigned char *A, const unsigned char *B, size_t len,
 const unsigned char *x, size_t xlen,
 const unsigned char *y, size_t ylen, int curve)
{
 p256_jacobian P, Q;
 uint32_t r, t, z;
 int i;

 (void)curve;
 r = p256_decode(&P, A, len);
 p256_mul(&P, x, xlen);
 if (B == ((void*)0)) {
  p256_mulgen(&Q, y, ylen);
 } else {
  r &= p256_decode(&Q, B, len);
  p256_mul(&Q, y, ylen);
 }




 t = p256_add(&P, &Q);
 reduce_final_f256(P.z);
 z = 0;
 for (i = 0; i < 9; i ++) {
  z |= P.z[i];
 }
 z = EQ(z, 0);
 p256_double(&Q);
 CCOPY(z & ~t, &P, &Q, sizeof Q);
 p256_to_affine(&P);
 p256_encode(A, &P);
 r &= ~(z & t);
 return r;
}
