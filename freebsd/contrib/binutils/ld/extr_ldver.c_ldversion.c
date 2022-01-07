
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* emulation_name; } ;
typedef TYPE_1__ ld_emulation_xfer_type ;


 char* BFD_VERSION_STRING ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*) ;
 TYPE_1__** ld_emulations ;
 int printf (char*,...) ;
 int stdout ;

void
ldversion (int noisy)
{

  fprintf (stdout, _("GNU ld %s\n"), BFD_VERSION_STRING);

  if (noisy & 2)
    {
      printf (_("Copyright 2007 Free Software Foundation, Inc.\n"));
      printf (_("This program is free software; you may redistribute it under the terms of\nthe GNU General Public License.  This program has absolutely no warranty.\n"));


    }

  if (noisy & 1)
    {
      ld_emulation_xfer_type **ptr = ld_emulations;

      printf (_("  Supported emulations:\n"));
      while (*ptr)
 {
   printf ("   %s\n", (*ptr)->emulation_name);
   ptr++;
 }
    }
}
