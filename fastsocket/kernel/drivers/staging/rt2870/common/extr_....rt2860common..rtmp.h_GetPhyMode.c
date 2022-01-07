
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char* GetPhyMode(
 int Mode)
{
 switch(Mode)
 {
  case 131:
   return "CCK";

  case 128:
   return "OFDM";
  case 129:
   return "HTMIX";

  case 130:
   return "GREEN";
  default:
   return "N/A";
 }
}
