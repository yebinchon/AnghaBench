
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* GetPhyMode(
 int Mode)
{
 switch(Mode)
 {
  case 131:
   return "CCK";

  case 128:
   return "OFDM";







  default:
   return "N/A";
 }
}
