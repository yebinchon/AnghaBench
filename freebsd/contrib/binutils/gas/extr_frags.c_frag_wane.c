
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fr_var; scalar_t__ fr_offset; int fr_type; } ;
typedef TYPE_1__ fragS ;


 int rs_fill ;

void
frag_wane (register fragS *fragP)
{
  fragP->fr_type = rs_fill;
  fragP->fr_offset = 0;
  fragP->fr_var = 0;
}
