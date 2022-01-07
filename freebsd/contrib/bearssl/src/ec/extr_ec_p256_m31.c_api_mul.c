
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int p256_jacobian ;


 int p256_decode (int *,unsigned char*,size_t) ;
 int p256_encode (unsigned char*,int *) ;
 int p256_mul (int *,unsigned char const*,size_t) ;
 int p256_to_affine (int *) ;

__attribute__((used)) static uint32_t
api_mul(unsigned char *G, size_t Glen,
 const unsigned char *x, size_t xlen, int curve)
{
 uint32_t r;
 p256_jacobian P;

 (void)curve;
 r = p256_decode(&P, G, Glen);
 p256_mul(&P, x, xlen);
 if (Glen >= 65) {
  p256_to_affine(&P);
  p256_encode(G, &P);
 }
 return r;
}
