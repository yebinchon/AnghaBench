
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_cmd (char*,int ,int ,char*,int *) ;
 struct cmd_list_element* add_set_enum_cmd (char*,int ,int ,int *,char*,int *) ;
 int class_support ;
 int endian_enum ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int set_endian ;
 int set_endian_string ;
 int setlist ;
 int show_endian ;
 int showlist ;

void
_initialize_gdbarch_utils (void)
{
  struct cmd_list_element *c;
  c = add_set_enum_cmd ("endian", class_support,
   endian_enum, &set_endian_string,
   "Set endianness of target.",
   &setlist);
  set_cmd_sfunc (c, set_endian);


  add_cmd ("endian", class_support, show_endian,
    "Show the current byte-order", &showlist);
}
