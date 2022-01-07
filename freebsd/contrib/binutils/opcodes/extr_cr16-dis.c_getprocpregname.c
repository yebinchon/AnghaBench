
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int image; char* name; } ;
typedef TYPE_1__ reg_entry ;


 int NUMPREGPS ;
 TYPE_1__ const* cr16_pregptab ;

__attribute__((used)) static char *
getprocpregname (int index)
{
  const reg_entry *r;

  for (r = cr16_pregptab; r < cr16_pregptab + NUMPREGPS; r++)
    if (r->image == index)
      return r->name;

  return "ILLEGAL REGISTER";
}
