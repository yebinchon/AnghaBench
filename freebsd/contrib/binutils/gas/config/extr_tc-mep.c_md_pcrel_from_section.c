
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
typedef scalar_t__ segT ;
struct TYPE_5__ {long fx_where; TYPE_1__* fx_frag; int * fx_addsy; } ;
typedef TYPE_2__ fixS ;
struct TYPE_4__ {long fr_address; } ;


 scalar_t__ S_GET_SEGMENT (int *) ;
 int S_IS_DEFINED (int *) ;

long
md_pcrel_from_section (fixS *fixP, segT sec)
{
  if (fixP->fx_addsy != (symbolS *) ((void*)0)
      && (! S_IS_DEFINED (fixP->fx_addsy)
   || S_GET_SEGMENT (fixP->fx_addsy) != sec))


    return 0;




  return fixP->fx_where + fixP->fx_frag->fr_address;
}
