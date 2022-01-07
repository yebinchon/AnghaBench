
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* api_generator (int,size_t*) ;
 int api_mul (unsigned char*,size_t,unsigned char const*,size_t,int) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static size_t
api_mulgen(unsigned char *R,
 const unsigned char *x, size_t xlen, int curve)
{
 const unsigned char *G;
 size_t Glen;

 G = api_generator(curve, &Glen);
 memcpy(R, G, Glen);
 api_mul(R, Glen, x, xlen, curve);
 return Glen;
}
