
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ scanflags_t ;


 int _ (char*) ;
 int _sf_max ;
 scalar_t__* _sf_stk ;
 size_t _sf_top_ix ;
 int assert (int ) ;
 scalar_t__ flex_alloc (int) ;
 int lerrsf_fatal (int ,void*) ;

void
sf_init (void)
{
    assert(_sf_stk == ((void*)0));
    _sf_stk = (scanflags_t*) flex_alloc ( sizeof(scanflags_t) * (_sf_max = 32));
    if (!_sf_stk)
        lerrsf_fatal(_("Unable to allocate %ld of stack"),
            (void *)(uintptr_t)sizeof(scanflags_t));
    _sf_stk[_sf_top_ix] = 0;
}
