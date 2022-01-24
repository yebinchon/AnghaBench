#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct macro_source_file {struct macro_source_file* included_by; } ;
struct line_header {int dummy; } ;
struct dwarf2_cu {int /*<<< orphan*/  objfile; } ;
typedef  enum dwarf_macinfo_record_type { ____Placeholder_dwarf_macinfo_record_type } dwarf_macinfo_record_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
#define  DW_MACINFO_define 132 
#define  DW_MACINFO_end_file 131 
#define  DW_MACINFO_start_file 130 
#define  DW_MACINFO_undef 129 
#define  DW_MACINFO_vendor_ext 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* dwarf_macinfo_buffer ; 
 int dwarf_macinfo_size ; 
 struct macro_source_file* FUNC2 (int,int,struct macro_source_file*,char*,struct line_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct macro_source_file*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct macro_source_file*,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static void
FUNC8 (struct line_header *lh, unsigned int offset,
                     char *comp_dir, bfd *abfd,
                     struct dwarf2_cu *cu)
{
  char *mac_ptr, *mac_end;
  struct macro_source_file *current_file = 0;

  if (dwarf_macinfo_buffer == NULL)
    {
      FUNC0 (&symfile_complaints, "missing .debug_macinfo section");
      return;
    }

  mac_ptr = dwarf_macinfo_buffer + offset;
  mac_end = dwarf_macinfo_buffer + dwarf_macinfo_size;

  for (;;)
    {
      enum dwarf_macinfo_record_type macinfo_type;

      /* Do we at least have room for a macinfo type byte?  */
      if (mac_ptr >= mac_end)
        {
	  FUNC1 ();
          return;
        }

      macinfo_type = FUNC5 (abfd, mac_ptr);
      mac_ptr++;

      switch (macinfo_type)
        {
          /* A zero macinfo type indicates the end of the macro
             information.  */
        case 0:
          return;

        case DW_MACINFO_define:
        case DW_MACINFO_undef:
          {
            int bytes_read;
            int line;
            char *body;

            line = FUNC7 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;
            body = FUNC6 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;

            if (! current_file)
	      FUNC0 (&symfile_complaints,
			 "debug info gives macro %s outside of any file: %s",
			 macinfo_type ==
			 DW_MACINFO_define ? "definition" : macinfo_type ==
			 DW_MACINFO_undef ? "undefinition" :
			 "something-or-other", body);
            else
              {
                if (macinfo_type == DW_MACINFO_define)
                  FUNC4 (current_file, line, body);
                else if (macinfo_type == DW_MACINFO_undef)
                  FUNC3 (current_file, line, body);
              }
          }
          break;

        case DW_MACINFO_start_file:
          {
            int bytes_read;
            int line, file;

            line = FUNC7 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;
            file = FUNC7 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;

            current_file = FUNC2 (file, line,
                                             current_file, comp_dir,
                                             lh, cu->objfile);
          }
          break;

        case DW_MACINFO_end_file:
          if (! current_file)
	    FUNC0 (&symfile_complaints,
		       "macro debug info has an unmatched `close_file' directive");
          else
            {
              current_file = current_file->included_by;
              if (! current_file)
                {
                  enum dwarf_macinfo_record_type next_type;

                  /* GCC circa March 2002 doesn't produce the zero
                     type byte marking the end of the compilation
                     unit.  Complain if it's not there, but exit no
                     matter what.  */

                  /* Do we at least have room for a macinfo type byte?  */
                  if (mac_ptr >= mac_end)
                    {
		      FUNC1 ();
                      return;
                    }

                  /* We don't increment mac_ptr here, so this is just
                     a look-ahead.  */
                  next_type = FUNC5 (abfd, mac_ptr);
                  if (next_type != 0)
		    FUNC0 (&symfile_complaints,
			       "no terminating 0-type entry for macros in `.debug_macinfo' section");

                  return;
                }
            }
          break;

        case DW_MACINFO_vendor_ext:
          {
            int bytes_read;
            int constant;
            char *string;

            constant = FUNC7 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;
            string = FUNC6 (abfd, mac_ptr, &bytes_read);
            mac_ptr += bytes_read;

            /* We don't recognize any vendor extensions.  */
          }
          break;
        }
    }
}