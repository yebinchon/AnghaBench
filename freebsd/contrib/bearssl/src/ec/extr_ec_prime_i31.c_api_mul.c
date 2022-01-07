
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int jacobian ;
typedef int curve_params ;


 int * id_to_curve (int) ;
 int point_decode (int *,unsigned char*,size_t,int const*) ;
 int point_encode (unsigned char*,int *,int const*) ;
 int point_mul (int *,unsigned char const*,size_t,int const*) ;

__attribute__((used)) static uint32_t
api_mul(unsigned char *G, size_t Glen,
 const unsigned char *x, size_t xlen, int curve)
{
 uint32_t r;
 const curve_params *cc;
 jacobian P;

 cc = id_to_curve(curve);
 r = point_decode(&P, G, Glen, cc);
 point_mul(&P, x, xlen, cc);
 point_encode(G, &P, cc);
 return r;
}
