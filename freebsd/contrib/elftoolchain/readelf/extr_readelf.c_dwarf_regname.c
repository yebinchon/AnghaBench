
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int e_machine; } ;
struct readelf {TYPE_1__ ehdr; } ;
typedef int rx ;


 char* dwarf_reg (int ,unsigned int) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
dwarf_regname(struct readelf *re, unsigned int num)
{
 static char rx[32];
 const char *rn;

 if ((rn = dwarf_reg(re->ehdr.e_machine, num)) != ((void*)0))
  return (rn);

 snprintf(rx, sizeof(rx), "r%u", num);

 return (rx);
}
