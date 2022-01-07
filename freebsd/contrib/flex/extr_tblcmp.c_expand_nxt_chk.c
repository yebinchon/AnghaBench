
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_XPAIRS_INCREMENT ;
 scalar_t__ chk ;
 int current_max_xpairs ;
 int num_reallocs ;
 scalar_t__ nxt ;
 scalar_t__ reallocate_integer_array (scalar_t__,int) ;
 int zero_out (char*,size_t) ;

void expand_nxt_chk ()
{
 int old_max = current_max_xpairs;

 current_max_xpairs += MAX_XPAIRS_INCREMENT;

 ++num_reallocs;

 nxt = reallocate_integer_array (nxt, current_max_xpairs);
 chk = reallocate_integer_array (chk, current_max_xpairs);

 zero_out ((char *) (chk + old_max),
    (size_t) (MAX_XPAIRS_INCREMENT * sizeof (int)));
}
