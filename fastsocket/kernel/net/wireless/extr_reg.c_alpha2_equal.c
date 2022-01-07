
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool alpha2_equal(const char *alpha2_x, const char *alpha2_y)
{
 if (!alpha2_x || !alpha2_y)
  return 0;
 return alpha2_x[0] == alpha2_y[0] && alpha2_x[1] == alpha2_y[1];
}
