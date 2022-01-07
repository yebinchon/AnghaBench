
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
annotate_source (char *filename, int line, int character, int mid, CORE_ADDR pc)
{
  if (annotation_level > 1)
    printf_filtered ("\n\032\032source ");
  else
    printf_filtered ("\032\032");

  printf_filtered ("%s:%d:%d:%s:0x", filename,
     line, character,
     mid ? "middle" : "beg");
  print_address_numeric (pc, 0, gdb_stdout);
  printf_filtered ("\n");
}
