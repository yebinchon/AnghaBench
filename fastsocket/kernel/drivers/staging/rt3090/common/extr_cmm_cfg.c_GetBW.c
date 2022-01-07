
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* GetBW(
 int BW)
{
 switch(BW)
 {
  case 130:
   return "10M";

  case 129:
   return "20M";




  default:
   return "N/A";
 }
}
