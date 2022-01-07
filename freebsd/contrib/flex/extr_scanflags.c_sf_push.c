
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scanflags_t ;


 int _sf_max ;
 int * _sf_stk ;
 int _sf_top_ix ;
 scalar_t__ flex_realloc (void*,int) ;

void
sf_push (void)
{
    if (_sf_top_ix + 1 >= _sf_max)
        _sf_stk = (scanflags_t*) flex_realloc ( (void*) _sf_stk, sizeof(scanflags_t) * (_sf_max += 32));


    _sf_stk[_sf_top_ix + 1] = _sf_stk[_sf_top_ix];
    ++_sf_top_ix;
}
