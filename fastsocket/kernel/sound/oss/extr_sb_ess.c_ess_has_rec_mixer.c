
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ess_has_rec_mixer (int submodel)
{
 switch (submodel) {
 case 128:
  return 1;
 default:
  return 0;
 };
}
