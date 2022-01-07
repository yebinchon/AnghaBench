
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum prop_type { ____Placeholder_prop_type } prop_type ;
const char *prop_get_type_name(enum prop_type type)
{
 switch (type) {
 case 131:
  return "prompt";
 case 133:
  return "env";
 case 135:
  return "comment";
 case 132:
  return "menu";
 case 134:
  return "default";
 case 136:
  return "choice";
 case 129:
  return "select";
 case 130:
  return "range";
 case 128:
  break;
 }
 return "unknown";
}
