
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint16_t ;


 int C255_P ;
 int br_i15_add (int const*,int ,int ) ;
 int br_i15_sub (int const*,int const*,int) ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static void
c255_sub(uint16_t *d, const uint16_t *a, const uint16_t *b)
{
 uint16_t t[18];

 memcpy(t, a, sizeof t);
 br_i15_add(t, C255_P, br_i15_sub(t, b, 1));
 memcpy(d, t, sizeof t);
}
