
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_source_file {struct macro_source_file* included_by; } ;
struct line_header {int dummy; } ;
struct dwarf2_cu {int objfile; } ;
typedef enum dwarf_macinfo_record_type { ____Placeholder_dwarf_macinfo_record_type } dwarf_macinfo_record_type ;
typedef int bfd ;







 int complaint (int *,char*,...) ;
 int dwarf2_macros_too_long_complaint () ;
 char* dwarf_macinfo_buffer ;
 int dwarf_macinfo_size ;
 struct macro_source_file* macro_start_file (int,int,struct macro_source_file*,char*,struct line_header*,int ) ;
 int macro_undef (struct macro_source_file*,int,char*) ;
 int parse_macro_definition (struct macro_source_file*,int,char*) ;
 int read_1_byte (int *,char*) ;
 char* read_string (int *,char*,int*) ;
 int read_unsigned_leb128 (int *,char*,int*) ;
 int symfile_complaints ;

__attribute__((used)) static void
dwarf_decode_macros (struct line_header *lh, unsigned int offset,
                     char *comp_dir, bfd *abfd,
                     struct dwarf2_cu *cu)
{
  char *mac_ptr, *mac_end;
  struct macro_source_file *current_file = 0;

  if (dwarf_macinfo_buffer == ((void*)0))
    {
      complaint (&symfile_complaints, "missing .debug_macinfo section");
      return;
    }

  mac_ptr = dwarf_macinfo_buffer + offset;
  mac_end = dwarf_macinfo_buffer + dwarf_macinfo_size;

  for (;;)
    {
      enum dwarf_macinfo_record_type macinfo_type;


      if (mac_ptr >= mac_end)
        {
   dwarf2_macros_too_long_complaint ();
          return;
        }

      macinfo_type = read_1_byte (abfd, mac_ptr);
      mac_ptr++;

      switch (macinfo_type)
        {


        case 0:
          return;

        case 132:
        case 129:
          {
            int bytes_read;
            int line;
            char *body;

            line = read_unsigned_leb128 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;
            body = read_string (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;

            if (! current_file)
       complaint (&symfile_complaints,
    "debug info gives macro %s outside of any file: %s",
    macinfo_type ==
    132 ? "definition" : macinfo_type ==
    129 ? "undefinition" :
    "something-or-other", body);
            else
              {
                if (macinfo_type == 132)
                  parse_macro_definition (current_file, line, body);
                else if (macinfo_type == 129)
                  macro_undef (current_file, line, body);
              }
          }
          break;

        case 130:
          {
            int bytes_read;
            int line, file;

            line = read_unsigned_leb128 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;
            file = read_unsigned_leb128 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;

            current_file = macro_start_file (file, line,
                                             current_file, comp_dir,
                                             lh, cu->objfile);
          }
          break;

        case 131:
          if (! current_file)
     complaint (&symfile_complaints,
         "macro debug info has an unmatched `close_file' directive");
          else
            {
              current_file = current_file->included_by;
              if (! current_file)
                {
                  enum dwarf_macinfo_record_type next_type;







                  if (mac_ptr >= mac_end)
                    {
        dwarf2_macros_too_long_complaint ();
                      return;
                    }



                  next_type = read_1_byte (abfd, mac_ptr);
                  if (next_type != 0)
      complaint (&symfile_complaints,
          "no terminating 0-type entry for macros in `.debug_macinfo' section");

                  return;
                }
            }
          break;

        case 128:
          {
            int bytes_read;
            int constant;
            char *string;

            constant = read_unsigned_leb128 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;
            string = read_string (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;


          }
          break;
        }
    }
}
