
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tune; } ;


 int IA64_TYPE_B ;
 int IA64_TYPE_F ;
 int IA64_TYPE_I ;
 int IA64_TYPE_M ;
 int abort () ;


 int match (int,int ,int) ;
 TYPE_1__ md ;

__attribute__((used)) static inline int
extra_goodness (int templ, int slot)
{
  switch (md.tune)
    {
    case 129:
      if (slot == 1 && match (templ, IA64_TYPE_F, slot))
 return 2;
      else if (slot == 2 && match (templ, IA64_TYPE_B, slot))
 return 1;
      else
 return 0;
      break;
    case 128:
      if (match (templ, IA64_TYPE_M, slot)
   || match (templ, IA64_TYPE_I, slot))



 return 2;
      else
 return 0;
      break;
    default:
      abort ();
      return 0;
    }
}
