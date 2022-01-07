
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *core_alua_dump_status(int status)
{
 switch (status) {
 case 128:
  return "None";
 case 130:
  return "Altered by Explict STPG";
 case 129:
  return "Altered by Implict ALUA";
 default:
  return "Unknown";
 }

 return ((void*)0);
}
