
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct elfdump {TYPE_1__* sl; int shnum; } ;
typedef int num ;
struct TYPE_2__ {char const* name; } ;





 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
sh_name(struct elfdump *ed, int ndx)
{
 static char num[10];

 switch (ndx) {
 case 128: return "UNDEF";
 case 130: return "ABS";
 case 129: return "COMMON";
 default:
  if ((uint64_t)ndx < ed->shnum)
   return (ed->sl[ndx].name);
  else {
   snprintf(num, sizeof(num), "%d", ndx);
   return (num);
  }
 }
}
