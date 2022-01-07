
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frch_obstack; } ;


 TYPE_1__* frchain_now ;
 int obstack_room (int *) ;

int
frag_room (void)
{
  return obstack_room (&frchain_now->frch_obstack);
}
