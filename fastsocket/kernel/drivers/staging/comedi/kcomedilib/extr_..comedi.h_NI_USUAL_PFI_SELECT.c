
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned NI_USUAL_PFI_SELECT(unsigned pfi_channel) {
  if (pfi_channel < 10)
   return 0x1 + pfi_channel;
  else
   return 0xb + pfi_channel;
 }
