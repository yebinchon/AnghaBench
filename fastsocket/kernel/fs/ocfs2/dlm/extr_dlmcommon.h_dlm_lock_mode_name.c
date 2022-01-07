
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char * dlm_lock_mode_name(int mode)
{
 switch (mode) {
  case 130:
   return "EX";
  case 128:
   return "PR";
  case 129:
   return "NL";
 }
 return "UNKNOWN";
}
