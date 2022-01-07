
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* program_name ;
 int xexit (int ) ;

__attribute__((used)) static void
print_version (void)
{
  printf ("%s: version 1.0\n", program_name);
  xexit (0);
}
