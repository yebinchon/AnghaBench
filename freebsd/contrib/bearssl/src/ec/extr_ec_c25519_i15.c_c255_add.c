
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int const uint16_t ;


 int C255_P ;
 int NOT (int ) ;
 int br_i15_add (int const*,int const*,int) ;
 int br_i15_sub (int const*,int ,int ) ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static void
c255_add(uint16_t *d, const uint16_t *a, const uint16_t *b)
{
 uint32_t ctl;
 uint16_t t[18];

 memcpy(t, a, sizeof t);
 ctl = br_i15_add(t, b, 1);
 ctl |= NOT(br_i15_sub(t, C255_P, 0));
 br_i15_sub(t, C255_P, ctl);
 memcpy(d, t, sizeof t);
}
