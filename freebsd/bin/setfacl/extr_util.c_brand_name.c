
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
brand_name(int brand)
{
 switch (brand) {
 case 129:
  return "NFSv4";
 case 128:
  return "POSIX.1e";
 default:
  return "unknown";
 }
}
