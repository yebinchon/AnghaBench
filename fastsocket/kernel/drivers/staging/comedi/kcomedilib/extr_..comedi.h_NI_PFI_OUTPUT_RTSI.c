
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NI_PFI_OUTPUT_RTSI0 ;

__attribute__((used)) static inline unsigned NI_PFI_OUTPUT_RTSI(unsigned rtsi_channel) {
  return NI_PFI_OUTPUT_RTSI0 + rtsi_channel;
 }
