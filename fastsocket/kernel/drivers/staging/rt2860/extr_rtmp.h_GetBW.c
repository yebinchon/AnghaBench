
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char* GetBW(
 int BW)
{
 switch(BW)
 {
  case 130:
   return "10M";

  case 129:
   return "20M";
  case 128:
   return "40M";
  default:
   return "N/A";
 }
}
