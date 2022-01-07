
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_intersected_alpha2(const char *alpha2)
{
 if (!alpha2)
  return 0;





 return alpha2[0] == '9' && alpha2[1] == '8';
}
