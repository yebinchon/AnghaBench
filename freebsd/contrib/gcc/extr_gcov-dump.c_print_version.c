
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 char* version_string ;

__attribute__((used)) static void
print_version (void)
{
  printf ("gcov-dump (GCC) %s\n", version_string);
  printf ("Copyright (C) 2006 Free Software Foundation, Inc.\n");
  printf ("This is free software; see the source for copying conditions.\n"
     "There is NO warranty; not even for MERCHANTABILITY or \n"
   "FITNESS FOR A PARTICULAR PURPOSE.\n\n");
}
