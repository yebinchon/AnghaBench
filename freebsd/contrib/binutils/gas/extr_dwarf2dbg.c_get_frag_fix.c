
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int segT ;
typedef char* offsetT ;
struct TYPE_5__ {int frch_obstack; TYPE_2__* frch_last; struct TYPE_5__* frch_next; } ;
typedef TYPE_1__ frchainS ;
struct TYPE_6__ {char* fr_fix; int fr_literal; scalar_t__ fr_next; } ;
typedef TYPE_2__ fragS ;
struct TYPE_7__ {TYPE_1__* frchainP; } ;


 int abort () ;
 scalar_t__ obstack_next_free (int *) ;
 TYPE_3__* seg_info (int ) ;

__attribute__((used)) static offsetT
get_frag_fix (fragS *frag, segT seg)
{
  frchainS *fr;

  if (frag->fr_next)
    return frag->fr_fix;




  for (fr = seg_info (seg)->frchainP; fr; fr = fr->frch_next)
    if (fr->frch_last == frag)
      return (char *) obstack_next_free (&fr->frch_obstack) - frag->fr_literal;

  abort ();
}
