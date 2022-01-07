
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clobber_return_register () ;
 int expand_null_return_1 () ;

void
expand_null_return (void)
{



  clobber_return_register ();

  expand_null_return_1 ();
}
