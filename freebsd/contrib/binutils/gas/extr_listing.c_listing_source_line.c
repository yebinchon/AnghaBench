
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int hll_line; } ;


 scalar_t__ listing ;
 TYPE_1__* listing_tail ;
 int new_frag () ;

void
listing_source_line (unsigned int line)
{
  if (listing)
    {
      new_frag ();
      listing_tail->hll_line = line;
      new_frag ();
    }
}
