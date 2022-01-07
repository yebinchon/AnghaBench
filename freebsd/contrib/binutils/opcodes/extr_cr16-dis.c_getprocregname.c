
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int image; char* name; } ;
typedef TYPE_1__ reg_entry ;


 int NUMPREGS ;
 TYPE_1__ const* cr16_pregtab ;

__attribute__((used)) static char *
getprocregname (int index)
{
  const reg_entry *r;

  for (r = cr16_pregtab; r < cr16_pregtab + NUMPREGS; r++)
    if (r->image == index)
      return r->name;

  return "ILLEGAL REGISTER";
}
