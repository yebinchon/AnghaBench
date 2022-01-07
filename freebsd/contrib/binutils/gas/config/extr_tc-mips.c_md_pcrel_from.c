
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long valueT ;
struct TYPE_5__ {long fx_where; int fx_r_type; int fx_line; int fx_file; int fx_addsy; TYPE_1__* fx_frag; } ;
typedef TYPE_2__ fixS ;
struct TYPE_4__ {long fr_address; } ;




 int S_GET_SEGMENT (int ) ;
 int _ (char*) ;
 int as_bad_where (int ,int ,int ) ;
 int now_seg ;

long
md_pcrel_from (fixS *fixP)
{
  valueT addr = fixP->fx_where + fixP->fx_frag->fr_address;
  switch (fixP->fx_r_type)
    {
    case 129:
    case 128:

      return addr + 4;
    default:

      if (fixP->fx_addsy && S_GET_SEGMENT (fixP->fx_addsy) != now_seg)
 as_bad_where (fixP->fx_file, fixP->fx_line,
        _("PC relative MIPS16 instruction references a different section"));
      return addr;
    }
}
