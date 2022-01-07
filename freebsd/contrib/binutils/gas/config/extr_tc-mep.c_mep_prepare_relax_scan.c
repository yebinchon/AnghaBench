
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
typedef size_t relax_substateT ;
typedef scalar_t__ offsetT ;
struct TYPE_4__ {int * fr_symbol; } ;
typedef TYPE_1__ fragS ;
struct TYPE_5__ {scalar_t__ rlx_length; } ;


 int S_IS_DEFINED (int *) ;
 TYPE_3__* md_relax_table ;

void
mep_prepare_relax_scan (fragS *fragP, offsetT *aim, relax_substateT this_state)
{
  symbolS *symbolP = fragP->fr_symbol;
  if (symbolP && !S_IS_DEFINED (symbolP))
    *aim = 0;

  *aim += 2 + md_relax_table[this_state].rlx_length;
}
