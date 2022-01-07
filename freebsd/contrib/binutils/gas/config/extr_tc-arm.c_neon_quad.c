
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum neon_shape { ____Placeholder_neon_shape } neon_shape ;


 scalar_t__ SC_QUAD ;
 scalar_t__* neon_shape_class ;

__attribute__((used)) static int
neon_quad (enum neon_shape shape)
{
  return neon_shape_class[shape] == SC_QUAD;
}
