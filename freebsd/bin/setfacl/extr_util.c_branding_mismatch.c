
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACL_BRAND_UNKNOWN ;

int
branding_mismatch(int brand1, int brand2)
{
 if (brand1 == ACL_BRAND_UNKNOWN || brand2 == ACL_BRAND_UNKNOWN)
  return (0);
 if (brand1 != brand2)
  return (1);
 return (0);
}
