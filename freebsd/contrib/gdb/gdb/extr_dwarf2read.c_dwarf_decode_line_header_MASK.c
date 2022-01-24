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
struct line_header {int total_length; char* statement_program_end; int opcode_base; unsigned char* standard_opcode_lengths; char* statement_program_start; void* line_range; int /*<<< orphan*/  line_base; void* default_is_stmt; void* minimum_instruction_length; int /*<<< orphan*/  header_length; int /*<<< orphan*/  version; } ;
struct dwarf2_cu {int /*<<< orphan*/  header; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  make_cleanup_ftype ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct line_header*,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct line_header*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* dwarf_line_buffer ; 
 unsigned int dwarf_line_size ; 
 scalar_t__ free_line_header ; 
 struct cleanup* FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct line_header*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int*) ; 
 char* FUNC12 (int /*<<< orphan*/ *,char*,int*) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 struct line_header* FUNC14 (int) ; 

__attribute__((used)) static struct line_header *
FUNC15 (unsigned int offset, bfd *abfd,
			  struct dwarf2_cu *cu)
{
  struct cleanup *back_to;
  struct line_header *lh;
  char *line_ptr;
  int bytes_read;
  int i;
  char *cur_dir, *cur_file;

  if (dwarf_line_buffer == NULL)
    {
      FUNC2 (&symfile_complaints, "missing .debug_line section");
      return 0;
    }

  /* Make sure that at least there's room for the total_length field.  That
     could be 12 bytes long, but we're just going to fudge that.  */
  if (offset + 4 >= dwarf_line_size)
    {
      FUNC4 ();
      return 0;
    }

  lh = FUNC14 (sizeof (*lh));
  FUNC6 (lh, 0, sizeof (*lh));
  back_to = FUNC5 ((make_cleanup_ftype *) free_line_header,
                          (void *) lh);

  line_ptr = dwarf_line_buffer + offset;

  /* read in the header */
  lh->total_length = FUNC10 (abfd, line_ptr, &cu->header, &bytes_read);
  line_ptr += bytes_read;
  if (line_ptr + lh->total_length > dwarf_line_buffer + dwarf_line_size)
    {
      FUNC4 ();
      return 0;
    }
  lh->statement_program_end = line_ptr + lh->total_length;
  lh->version = FUNC9 (abfd, line_ptr);
  line_ptr += 2;
  lh->header_length = FUNC11 (abfd, line_ptr, &cu->header, &bytes_read);
  line_ptr += bytes_read;
  lh->minimum_instruction_length = FUNC7 (abfd, line_ptr);
  line_ptr += 1;
  lh->default_is_stmt = FUNC7 (abfd, line_ptr);
  line_ptr += 1;
  lh->line_base = FUNC8 (abfd, line_ptr);
  line_ptr += 1;
  lh->line_range = FUNC7 (abfd, line_ptr);
  line_ptr += 1;
  lh->opcode_base = FUNC7 (abfd, line_ptr);
  line_ptr += 1;
  lh->standard_opcode_lengths
    = (unsigned char *) FUNC14 (lh->opcode_base * sizeof (unsigned char));

  lh->standard_opcode_lengths[0] = 1;  /* This should never be used anyway.  */
  for (i = 1; i < lh->opcode_base; ++i)
    {
      lh->standard_opcode_lengths[i] = FUNC7 (abfd, line_ptr);
      line_ptr += 1;
    }

  /* Read directory table  */
  while ((cur_dir = FUNC12 (abfd, line_ptr, &bytes_read)) != NULL)
    {
      line_ptr += bytes_read;
      FUNC1 (lh, cur_dir);
    }
  line_ptr += bytes_read;

  /* Read file name table */
  while ((cur_file = FUNC12 (abfd, line_ptr, &bytes_read)) != NULL)
    {
      unsigned int dir_index, mod_time, length;

      line_ptr += bytes_read;
      dir_index = FUNC13 (abfd, line_ptr, &bytes_read);
      line_ptr += bytes_read;
      mod_time = FUNC13 (abfd, line_ptr, &bytes_read);
      line_ptr += bytes_read;
      length = FUNC13 (abfd, line_ptr, &bytes_read);
      line_ptr += bytes_read;

      FUNC0 (lh, cur_file, dir_index, mod_time, length);
    }
  line_ptr += bytes_read;
  lh->statement_program_start = line_ptr; 

  if (line_ptr > dwarf_line_buffer + dwarf_line_size)
    FUNC2 (&symfile_complaints,
	       "line number info header doesn't fit in `.debug_line' section");

  FUNC3 (back_to);
  return lh;
}