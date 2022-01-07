
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *host_typetostr(int type)
{
 switch (type) {
 case 128:
  return "VIRTUAL";
 case 129:
  return "USB";
 case 134:
  return "PCCARD";
 case 130:
  return "UART";
 case 132:
  return "RS232";
 case 133:
  return "PCI";
 case 131:
  return "SDIO";
 default:
  return "UNKNOWN";
 }
}
