
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int C255_P ;
 int P0I ;
 int br_i31_montymul (int *,int const*,int const*,int ,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
c255_mul(uint32_t *d, const uint32_t *a, const uint32_t *b)
{
 uint32_t t[10];

 br_i31_montymul(t, a, b, C255_P, P0I);
 memcpy(d, t, sizeof t);
}
