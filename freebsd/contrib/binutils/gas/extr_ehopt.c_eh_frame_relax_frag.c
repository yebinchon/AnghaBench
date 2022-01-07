
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fr_subtype; } ;
typedef TYPE_1__ fragS ;


 int eh_frame_estimate_size_before_relax (TYPE_1__*) ;

int
eh_frame_relax_frag (fragS *frag)
{
  int oldsize, newsize;

  oldsize = frag->fr_subtype & 7;
  newsize = eh_frame_estimate_size_before_relax (frag);
  return newsize - oldsize;
}
