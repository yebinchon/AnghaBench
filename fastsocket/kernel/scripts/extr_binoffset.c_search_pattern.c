
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t bix ;
 size_t filesize ;
 size_t firstloc ;
 scalar_t__* madr ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int ) ;
 scalar_t__ num_matches ;
 int pat_len ;
 scalar_t__* patterns ;

void search_pattern (void)
{
 for (bix = 0; bix < filesize; bix++) {
  if (madr[bix] == patterns[0]) {
   if (memcmp (&madr[bix], patterns, pat_len) == 0) {
    if (num_matches == 0)
     firstloc = bix;
    num_matches++;
   }
  }
 }
}
