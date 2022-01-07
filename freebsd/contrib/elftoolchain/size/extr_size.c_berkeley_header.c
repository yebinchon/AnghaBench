
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RADIX_OCTAL ;
 scalar_t__ bss_size ;
 scalar_t__ data_size ;
 scalar_t__ radix ;
 int tbl_append () ;
 int tbl_new (int) ;
 int tbl_print (char*,int) ;
 scalar_t__ text_size ;

__attribute__((used)) static void
berkeley_header(void)
{
 static int printed;

 text_size = data_size = bss_size = 0;
 if (!printed) {
  tbl_new(6);
  tbl_append();
  tbl_print("text", 0);
  tbl_print("data", 1);
  tbl_print("bss", 2);
  if (radix == RADIX_OCTAL)
   tbl_print("oct", 3);
  else
   tbl_print("dec", 3);
  tbl_print("hex", 4);
  tbl_print("filename", 5);
  printed = 1;
 }
}
