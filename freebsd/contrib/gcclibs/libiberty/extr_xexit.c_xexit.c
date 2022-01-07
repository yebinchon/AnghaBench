
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _xexit_cleanup () ;
 int exit (int) ;
 int stub1 () ;

void
xexit (int code)
{
  if (_xexit_cleanup != ((void*)0))
    (*_xexit_cleanup) ();
  exit (code);
}
