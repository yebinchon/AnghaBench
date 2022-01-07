
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {long fx_where; TYPE_1__* fx_frag; int * fx_subsy; scalar_t__ fx_addsy; } ;
typedef TYPE_2__ fixS ;
struct TYPE_4__ {long fr_address; } ;


 scalar_t__ S_GET_SEGMENT (scalar_t__) ;
 scalar_t__ undefined_section ;

long
md_pcrel_from (fixS * fixP)
{
  long retval = 0;

  if (fixP->fx_addsy
      && (S_GET_SEGMENT (fixP->fx_addsy) == undefined_section)
      && (fixP->fx_subsy == ((void*)0)))
    {
      retval = 0;
    }
  else
    {
      retval = fixP->fx_where + fixP->fx_frag->fr_address;
    }

  return retval;
}
