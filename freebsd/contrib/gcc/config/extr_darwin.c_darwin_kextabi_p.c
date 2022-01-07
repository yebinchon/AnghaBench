
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_apple_kext ;

bool
darwin_kextabi_p (void) {
  return flag_apple_kext;
}
