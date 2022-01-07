
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_3__ {int fr_subtype; int fr_symbol; } ;
typedef TYPE_1__ fragS ;


 int resolve_symbol_value (int ) ;

int
eh_frame_estimate_size_before_relax (fragS *frag)
{
  offsetT diff;
  int ca = frag->fr_subtype >> 3;
  int ret;

  diff = resolve_symbol_value (frag->fr_symbol);

  if (ca > 0 && diff % ca == 0 && diff / ca < 0x40)
    ret = 0;
  else if (diff < 0x100)
    ret = 1;
  else if (diff < 0x10000)
    ret = 2;
  else
    ret = 4;

  frag->fr_subtype = (frag->fr_subtype & ~7) | ret;

  return ret;
}
