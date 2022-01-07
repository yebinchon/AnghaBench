
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint32_t ;


 int C255_P ;
 int br_i31_add (int const*,int ,int ) ;
 int br_i31_sub (int const*,int const*,int) ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static void
c255_sub(uint32_t *d, const uint32_t *a, const uint32_t *b)
{
 uint32_t t[10];

 memcpy(t, a, sizeof t);
 br_i31_add(t, C255_P, br_i31_sub(t, b, 1));
 memcpy(d, t, sizeof t);
}
