
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ostr; int istr; } ;
typedef TYPE_1__ cinv_entry ;


 char* ILLEGAL ;
 int NUMCINVS ;
 TYPE_1__ const* cr16_cinvs ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static char *
getcinvstring (char *str)
{
  const cinv_entry *cinv;

  for (cinv = cr16_cinvs; cinv < (cr16_cinvs + NUMCINVS); cinv++)
    if (strcmp (cinv->istr, str) == 0)
      return cinv->ostr;

  return ILLEGAL;
}
