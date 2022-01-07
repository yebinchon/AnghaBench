
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _sf_top_ix ;
 int assert (int) ;

void
sf_pop (void)
{
    assert(_sf_top_ix > 0);
    --_sf_top_ix;
}
