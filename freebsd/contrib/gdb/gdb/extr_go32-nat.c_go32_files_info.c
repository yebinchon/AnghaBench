
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 int printf_unfiltered (char*) ;

__attribute__((used)) static void
go32_files_info (struct target_ops *target)
{
  printf_unfiltered ("You are running a DJGPP V2 program.\n");
}
