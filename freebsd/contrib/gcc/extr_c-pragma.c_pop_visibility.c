
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inpragma; } ;


 scalar_t__ VEC_length (int ,int ) ;
 int VEC_pop (int ,int ) ;
 int default_visibility ;
 int visibility ;
 TYPE_1__ visibility_options ;
 int visstack ;

void
pop_visibility (void)
{
  default_visibility = VEC_pop (visibility, visstack);
  visibility_options.inpragma
    = VEC_length (visibility, visstack) != 0;
}
