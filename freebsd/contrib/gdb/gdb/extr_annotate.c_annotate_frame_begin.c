
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int annotation_level ;
 int gdb_stdout ;
 int print_address_numeric (int ,int ,int ) ;
 int printf_filtered (char*,...) ;

void
annotate_frame_begin (int level, CORE_ADDR pc)
{
  if (annotation_level == 2)
    {
      printf_filtered ("\n\032\032frame-begin %d 0x", level);
      print_address_numeric (pc, 0, gdb_stdout);
      printf_filtered ("\n");
    }
}
