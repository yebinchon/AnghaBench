
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*) ;
 int symfile_complaints ;

__attribute__((used)) static void
dwarf2_macros_too_long_complaint (void)
{
  complaint (&symfile_complaints,
      "macro info runs off end of `.debug_macinfo' section");
}
