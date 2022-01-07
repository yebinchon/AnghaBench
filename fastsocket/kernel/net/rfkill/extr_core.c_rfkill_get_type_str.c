
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;


 int BUG () ;
 int BUILD_BUG_ON (int) ;
 int const NUM_RFKILL_TYPES ;







__attribute__((used)) static const char *rfkill_get_type_str(enum rfkill_type type)
{
 switch (type) {
 case 129:
  return "wlan";
 case 133:
  return "bluetooth";
 case 131:
  return "ultrawideband";
 case 130:
  return "wimax";
 case 128:
  return "wwan";
 case 132:
  return "gps";
 default:
  BUG();
 }

 BUILD_BUG_ON(NUM_RFKILL_TYPES != 132 + 1);
}
