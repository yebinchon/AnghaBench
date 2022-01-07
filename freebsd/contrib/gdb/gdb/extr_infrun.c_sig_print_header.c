
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_filtered (char*) ;

__attribute__((used)) static void
sig_print_header (void)
{
  printf_filtered ("Signal        Stop\tPrint\tPass to program\tDescription\n");

}
