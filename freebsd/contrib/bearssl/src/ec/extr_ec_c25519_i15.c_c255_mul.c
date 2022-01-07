
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int C255_P ;
 int P0I ;
 int br_i15_montymul (int *,int const*,int const*,int ,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
c255_mul(uint16_t *d, const uint16_t *a, const uint16_t *b)
{
 uint16_t t[18];

 br_i15_montymul(t, a, b, C255_P, P0I);
 memcpy(d, t, sizeof t);
}
