
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tlist ;
struct cmd_list_element {int dummy; } ;


 int add_cmd (char*,int ,int ,char*,int *) ;
 struct cmd_list_element* add_set_enum_cmd (char*,int ,int ,int *,char*,int *) ;
 int add_show_from_set (struct cmd_list_element*,int *) ;
 int ascii_print_literally ;
 int ascii_to_control ;
 int ascii_to_ebcdic_us_table ;
 int ascii_to_ibm1047_table ;
 int ascii_to_iso_8859_1_table ;
 int class_support ;
 int ebcdic_family_charset (char*) ;
 int ebcdic_us_to_ascii_table ;
 int ebcdic_us_to_ibm1047_table ;
 int ebcdic_us_to_iso_8859_1_table ;
 int host_charset_enum ;
 int host_charset_name ;
 int ibm1047_to_ascii_table ;
 int ibm1047_to_ebcdic_us_table ;
 int ibm1047_to_iso_8859_1_table ;
 int iso_8859_1_to_ascii_table ;
 int iso_8859_1_to_ebcdic_us_table ;
 int iso_8859_1_to_ibm1047_table ;
 int iso_8859_family_charset (char*) ;
 int register_charset (int ) ;
 int register_iconv_charsets () ;
 int register_translation (int ) ;
 int set_charset_sfunc ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int set_host_charset (int ) ;
 int set_host_charset_sfunc ;
 int set_target_charset (int ) ;
 int set_target_charset_sfunc ;
 int setlist ;
 int show_charset ;
 int showlist ;
 int simple_charset (char*,int,int ,int ,int ,int ) ;
 int simple_table_translation (char*,char*,int*) ;
 int target_charset_enum ;
 int target_charset_name ;

void
_initialize_charset (void)
{
  struct cmd_list_element *new_cmd;
  register_charset (simple_charset ("ASCII", 1,
                                    ascii_print_literally, 0,
                                    ascii_to_control, 0));
  register_charset (iso_8859_family_charset ("ISO-8859-1"));
  register_charset (ebcdic_family_charset ("EBCDIC-US"));
  register_charset (ebcdic_family_charset ("IBM1047"));
  register_iconv_charsets ();

  {
    struct { char *from; char *to; int *table; } tlist[] = {
      { "ASCII", "ISO-8859-1", ascii_to_iso_8859_1_table },
      { "ASCII", "EBCDIC-US", ascii_to_ebcdic_us_table },
      { "ASCII", "IBM1047", ascii_to_ibm1047_table },
      { "ISO-8859-1", "ASCII", iso_8859_1_to_ascii_table },
      { "ISO-8859-1", "EBCDIC-US", iso_8859_1_to_ebcdic_us_table },
      { "ISO-8859-1", "IBM1047", iso_8859_1_to_ibm1047_table },
      { "EBCDIC-US", "ASCII", ebcdic_us_to_ascii_table },
      { "EBCDIC-US", "ISO-8859-1", ebcdic_us_to_iso_8859_1_table },
      { "EBCDIC-US", "IBM1047", ebcdic_us_to_ibm1047_table },
      { "IBM1047", "ASCII", ibm1047_to_ascii_table },
      { "IBM1047", "ISO-8859-1", ibm1047_to_iso_8859_1_table },
      { "IBM1047", "EBCDIC-US", ibm1047_to_ebcdic_us_table }
    };

    int i;

    for (i = 0; i < (sizeof (tlist) / sizeof (tlist[0])); i++)
      register_translation (simple_table_translation (tlist[i].from,
                                                      tlist[i].to,
                                                      tlist[i].table));
  }

  set_host_charset (host_charset_name);
  set_target_charset (target_charset_name);

  new_cmd = add_set_enum_cmd ("charset",
         class_support,
         host_charset_enum,
         &host_charset_name,
                              "Set the host and target character sets.\n"
                              "The `host character set' is the one used by the system GDB is running on.\n"
                              "The `target character set' is the one used by the program being debugged.\n"
                              "You may only use supersets of ASCII for your host character set; GDB does\n"
                              "not support any others.\n"
                              "To see a list of the character sets GDB supports, type `set charset <TAB>'.",
         &setlist);



  set_cmd_sfunc (new_cmd, set_charset_sfunc);

  add_cmd ("charset", class_support, show_charset,
    "Show the host and target character sets.\n"
    "The `host character set' is the one used by the system GDB is running on.\n"
    "The `target character set' is the one used by the program being debugged.\n"
    "You may only use supersets of ASCII for your host character set; GDB does\n"
    "not support any others.\n"
    "To see a list of the character sets GDB supports, type `set charset <TAB>'.",
    &showlist);


  new_cmd = add_set_enum_cmd ("host-charset",
         class_support,
         host_charset_enum,
         &host_charset_name,
         "Set the host character set.\n"
         "The `host character set' is the one used by the system GDB is running on.\n"
         "You may only use supersets of ASCII for your host character set; GDB does\n"
         "not support any others.\n"
         "To see a list of the character sets GDB supports, type `set host-charset <TAB>'.",
         &setlist);

  set_cmd_sfunc (new_cmd, set_host_charset_sfunc);

  add_show_from_set (new_cmd, &showlist);



  new_cmd = add_set_enum_cmd ("target-charset",
         class_support,
         target_charset_enum,
         &target_charset_name,
         "Set the target character set.\n"
         "The `target character set' is the one used by the program being debugged.\n"
         "GDB translates characters and strings between the host and target\n"
         "character sets as needed.\n"
         "To see a list of the character sets GDB supports, type `set target-charset'<TAB>",
         &setlist);

  set_cmd_sfunc (new_cmd, set_target_charset_sfunc);
  add_show_from_set (new_cmd, &showlist);
}
