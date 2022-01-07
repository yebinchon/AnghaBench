
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int macro_lookup_ftype ;


 int error (char*) ;

char *
macro_expand_once (const char *source,
                   macro_lookup_ftype *lookup_func,
                   void *lookup_func_baton)
{
  error ("Expand-once not implemented yet.");
}
