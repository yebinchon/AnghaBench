
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *radeon_get_mon_name(int type)
{
 char *pret = ((void*)0);

 switch (type) {
  case 129:
   pret = "no";
   break;
  case 133:
   pret = "CRT";
   break;
  case 131:
   pret = "DFP";
   break;
  case 130:
   pret = "LCD";
   break;
  case 132:
   pret = "CTV";
   break;
  case 128:
   pret = "STV";
   break;
 }

 return pret;
}
