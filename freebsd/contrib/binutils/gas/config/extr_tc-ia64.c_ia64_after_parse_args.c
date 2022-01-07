
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEBUG_STABS ;
 int _ (char*) ;
 int as_fatal (int ) ;
 scalar_t__ debug_type ;

void
ia64_after_parse_args ()
{
  if (debug_type == DEBUG_STABS)
    as_fatal (_("--gstabs is not supported for ia64"));
}
