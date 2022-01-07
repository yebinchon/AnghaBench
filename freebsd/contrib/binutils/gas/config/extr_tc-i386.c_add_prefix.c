
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* prefix; int prefixes; } ;


 unsigned int ADDR_PREFIX ;

 scalar_t__ CODE_64BIT ;

 unsigned int DATA_PREFIX ;






 unsigned int LOCKREP_PREFIX ;



 unsigned int REX_B ;
 unsigned int REX_OPCODE ;
 size_t REX_PREFIX ;
 unsigned int REX_R ;
 unsigned int REX_W ;
 unsigned int REX_X ;
 unsigned int SEG_PREFIX ;

 unsigned int WAIT_PREFIX ;
 int _ (char*) ;
 int abort () ;
 int as_bad (int ) ;
 scalar_t__ flag_code ;
 TYPE_1__ i ;

__attribute__((used)) static int
add_prefix (unsigned int prefix)
{
  int ret = 1;
  unsigned int q;

  if (prefix >= REX_OPCODE && prefix < REX_OPCODE + 16
      && flag_code == CODE_64BIT)
    {
      if ((i.prefix[REX_PREFIX] & prefix & REX_W)
   || ((i.prefix[REX_PREFIX] & (REX_R | REX_X | REX_B))
       && (prefix & (REX_R | REX_X | REX_B))))
 ret = 0;
      q = REX_PREFIX;
    }
  else
    {
      switch (prefix)
 {
 default:
   abort ();

 case 138:
 case 136:
 case 135:
 case 134:
 case 132:
 case 128:
   q = SEG_PREFIX;
   break;

 case 129:
 case 130:
   ret = 2;

 case 131:
   q = LOCKREP_PREFIX;
   break;

 case 133:
   q = WAIT_PREFIX;
   break;

 case 139:
   q = ADDR_PREFIX;
   break;

 case 137:
   q = DATA_PREFIX;
   break;
 }
      if (i.prefix[q] != 0)
 ret = 0;
    }

  if (ret)
    {
      if (!i.prefix[q])
 ++i.prefixes;
      i.prefix[q] |= prefix;
    }
  else
    as_bad (_("same type of prefix used twice"));

  return ret;
}
