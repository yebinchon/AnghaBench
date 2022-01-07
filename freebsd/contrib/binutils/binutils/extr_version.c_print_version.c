
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BFD_VERSION_STRING ;
 char* _ (char*) ;
 int exit (int ) ;
 int printf (char*,...) ;

void
print_version (const char *name)
{


  printf ("GNU %s %s\n", name, BFD_VERSION_STRING);
  printf (_("Copyright 2007 Free Software Foundation, Inc.\n"));
  printf (_("This program is free software; you may redistribute it under the terms of\nthe GNU General Public License.  This program has absolutely no warranty.\n"));


  exit (0);
}
