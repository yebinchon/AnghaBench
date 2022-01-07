
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ segT ;
typedef int offsetT ;
struct TYPE_6__ {int fx_where; int fx_r_type; int * fx_addsy; scalar_t__ fx_pcrel; TYPE_1__* fx_frag; } ;
typedef TYPE_2__ fixS ;
struct TYPE_5__ {int fr_address; } ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_IS_EXTERNAL (int *) ;
 scalar_t__ arm_force_relocation (TYPE_2__*) ;

long
md_pcrel_from_section (fixS * fixP, segT seg)
{
  offsetT base = fixP->fx_where + fixP->fx_frag->fr_address;






  if (fixP->fx_pcrel
      && ((fixP->fx_addsy && S_GET_SEGMENT (fixP->fx_addsy) != seg)
   || (arm_force_relocation (fixP)



       )))
    base = 0;

  switch (fixP->fx_r_type)
    {





    case 136:
      return base & ~3;

    case 135:
    case 137:
    case 139:
    case 138:
      return (base + 4) & ~3;


    case 129:
    case 128:
    case 133:
    case 132:
    case 131:
    case 130:
    case 134:
      return base + 4;



    case 143:
    case 142:
    case 141:
    case 144:
    case 140:
      return base + 8;





    case 146:
    case 145:
    case 148:
    case 147:
    case 149:
      return base + 8;



    default:
      return base;
    }
}
