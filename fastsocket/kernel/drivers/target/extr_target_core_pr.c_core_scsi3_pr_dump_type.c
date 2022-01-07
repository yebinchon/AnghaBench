
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned char *core_scsi3_pr_dump_type(int type)
{
 switch (type) {
 case 130:
  return "Write Exclusive Access";
 case 133:
  return "Exclusive Access";
 case 128:
  return "Write Exclusive Access, Registrants Only";
 case 131:
  return "Exclusive Access, Registrants Only";
 case 129:
  return "Write Exclusive Access, All Registrants";
 case 132:
  return "Exclusive Access, All Registrants";
 default:
  break;
 }

 return "Unknown SPC-3 PR Type";
}
