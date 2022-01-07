
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int * c; } ;
typedef TYPE_1__ jacobian ;
typedef int curve_params ;


 int CCOPY (int,TYPE_1__*,TYPE_1__*,int) ;
 unsigned char* api_generator (int,size_t*) ;
 int br_i31_iszero (int ) ;
 int * id_to_curve (int) ;
 int point_add (TYPE_1__*,TYPE_1__*,int const*) ;
 int point_decode (TYPE_1__*,unsigned char const*,size_t,int const*) ;
 int point_double (TYPE_1__*,int const*) ;
 int point_encode (unsigned char*,TYPE_1__*,int const*) ;
 int point_mul (TYPE_1__*,unsigned char const*,size_t,int const*) ;

__attribute__((used)) static uint32_t
api_muladd(unsigned char *A, const unsigned char *B, size_t len,
 const unsigned char *x, size_t xlen,
 const unsigned char *y, size_t ylen, int curve)
{
 uint32_t r, t, z;
 const curve_params *cc;
 jacobian P, Q;







 cc = id_to_curve(curve);
 r = point_decode(&P, A, len, cc);
 if (B == ((void*)0)) {
  size_t Glen;

  B = api_generator(curve, &Glen);
 }
 r &= point_decode(&Q, B, len, cc);
 point_mul(&P, x, xlen, cc);
 point_mul(&Q, y, ylen, cc);
 t = point_add(&P, &Q, cc);
 point_double(&Q, cc);
 z = br_i31_iszero(P.c[2]);
 CCOPY(z & ~t, &P, &Q, sizeof Q);
 point_encode(A, &P, cc);
 r &= ~(z & t);

 return r;
}
