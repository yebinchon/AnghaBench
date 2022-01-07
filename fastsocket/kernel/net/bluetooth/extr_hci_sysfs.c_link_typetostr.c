
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *link_typetostr(int type)
{
 switch (type) {
 case 130:
  return "ACL";
 case 128:
  return "SCO";
 case 129:
  return "eSCO";
 default:
  return "UNKNOWN";
 }
}
