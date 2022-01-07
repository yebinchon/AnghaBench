
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p256_jacobian ;


 int p256_encode (unsigned char*,int *) ;
 int p256_mulgen (int *,unsigned char const*,size_t) ;
 int p256_to_affine (int *) ;

__attribute__((used)) static size_t
api_mulgen(unsigned char *R,
 const unsigned char *x, size_t xlen, int curve)
{
 p256_jacobian P;

 (void)curve;
 p256_mulgen(&P, x, xlen);
 p256_to_affine(&P);
 p256_encode(R, &P);
 return 65;
}
