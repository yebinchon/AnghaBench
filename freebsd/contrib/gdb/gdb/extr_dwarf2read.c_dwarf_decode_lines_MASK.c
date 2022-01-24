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
struct objfile {int /*<<< orphan*/  section_offsets; } ;
struct line_header {char* statement_program_start; char* statement_program_end; int default_is_stmt; unsigned int num_file_names; char** include_dirs; unsigned char opcode_base; unsigned char line_range; unsigned char minimum_instruction_length; int* standard_opcode_lengths; struct file_entry* file_names; scalar_t__ line_base; } ;
struct file_entry {int dir_index; int /*<<< orphan*/  name; } ;
struct dwarf2_cu {struct objfile* objfile; } ;
typedef  int /*<<< orphan*/  bfd ;
typedef  unsigned char CORE_ADDR ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  DW_LNE_define_file 140 
#define  DW_LNE_end_sequence 139 
#define  DW_LNE_set_address 138 
#define  DW_LNS_advance_line 137 
#define  DW_LNS_advance_pc 136 
#define  DW_LNS_const_add_pc 135 
#define  DW_LNS_copy 134 
#define  DW_LNS_extended_op 133 
#define  DW_LNS_fixed_advance_pc 132 
#define  DW_LNS_negate_stmt 131 
#define  DW_LNS_set_basic_block 130 
#define  DW_LNS_set_column 129 
#define  DW_LNS_set_file 128 
 int /*<<< orphan*/  FUNC1 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct line_header*,char*,unsigned int,unsigned int,unsigned int) ; 
 unsigned char FUNC3 (unsigned char,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  current_subfile ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 unsigned char FUNC6 (int /*<<< orphan*/ *,char*) ; 
 unsigned char FUNC7 (int /*<<< orphan*/ *,char*) ; 
 unsigned char FUNC8 (int /*<<< orphan*/ *,char*,struct dwarf2_cu*,unsigned int*) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 unsigned char FUNC11 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int,unsigned char) ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static void
FUNC13 (struct line_header *lh, char *comp_dir, bfd *abfd,
		    struct dwarf2_cu *cu)
{
  char *line_ptr;
  char *line_end;
  unsigned int bytes_read;
  unsigned char op_code, extended_op, adj_opcode;
  CORE_ADDR baseaddr;
  struct objfile *objfile = cu->objfile;

  baseaddr = FUNC0 (objfile->section_offsets, FUNC1 (objfile));

  line_ptr = lh->statement_program_start;
  line_end = lh->statement_program_end;

  /* Read the statement sequences until there's nothing left.  */
  while (line_ptr < line_end)
    {
      /* state machine registers  */
      CORE_ADDR address = 0;
      unsigned int file = 1;
      unsigned int line = 1;
      unsigned int column = 0;
      int is_stmt = lh->default_is_stmt;
      int basic_block = 0;
      int end_sequence = 0;

      /* Start a subfile for the current file of the state machine.  */
      if (lh->num_file_names >= file)
	{
	  /* lh->include_dirs and lh->file_names are 0-based, but the
	     directory and file name numbers in the statement program
	     are 1-based.  */
          struct file_entry *fe = &lh->file_names[file - 1];
          char *dir;
          if (fe->dir_index)
            dir = lh->include_dirs[fe->dir_index - 1];
          else
            dir = comp_dir;
	  FUNC5 (fe->name, dir);
	}

      /* Decode the table. */
      while (!end_sequence)
	{
	  op_code = FUNC6 (abfd, line_ptr);
	  line_ptr += 1;

	  if (op_code >= lh->opcode_base)
	    {		/* Special operand.  */
	      adj_opcode = op_code - lh->opcode_base;
	      address += (adj_opcode / lh->line_range)
		* lh->minimum_instruction_length;
	      line += lh->line_base + (adj_opcode % lh->line_range);
	      /* append row to matrix using current values */
	      FUNC12 (current_subfile, line, 
	                   FUNC3 (address, cu));
	      basic_block = 1;
	    }
	  else switch (op_code)
	    {
	    case DW_LNS_extended_op:
	      line_ptr += 1;	/* ignore length */
	      extended_op = FUNC6 (abfd, line_ptr);
	      line_ptr += 1;
	      switch (extended_op)
		{
		case DW_LNE_end_sequence:
		  end_sequence = 1;
		  FUNC12 (current_subfile, 0, address);
		  break;
		case DW_LNE_set_address:
		  address = FUNC8 (abfd, line_ptr, cu, &bytes_read);
		  line_ptr += bytes_read;
		  address += baseaddr;
		  break;
		case DW_LNE_define_file:
                  {
                    char *cur_file;
                    unsigned int dir_index, mod_time, length;
                    
                    cur_file = FUNC10 (abfd, line_ptr, &bytes_read);
                    line_ptr += bytes_read;
                    dir_index =
                      FUNC11 (abfd, line_ptr, &bytes_read);
                    line_ptr += bytes_read;
                    mod_time =
                      FUNC11 (abfd, line_ptr, &bytes_read);
                    line_ptr += bytes_read;
                    length =
                      FUNC11 (abfd, line_ptr, &bytes_read);
                    line_ptr += bytes_read;
                    FUNC2 (lh, cur_file, dir_index, mod_time, length);
                  }
		  break;
		default:
		  FUNC4 (&symfile_complaints,
			     "mangled .debug_line section");
		  return;
		}
	      break;
	    case DW_LNS_copy:
	      FUNC12 (current_subfile, line, 
	                   FUNC3 (address, cu));
	      basic_block = 0;
	      break;
	    case DW_LNS_advance_pc:
	      address += lh->minimum_instruction_length
		* FUNC11 (abfd, line_ptr, &bytes_read);
	      line_ptr += bytes_read;
	      break;
	    case DW_LNS_advance_line:
	      line += FUNC9 (abfd, line_ptr, &bytes_read);
	      line_ptr += bytes_read;
	      break;
	    case DW_LNS_set_file:
              {
                /* lh->include_dirs and lh->file_names are 0-based,
                   but the directory and file name numbers in the
                   statement program are 1-based.  */
                struct file_entry *fe;
                char *dir;
                file = FUNC11 (abfd, line_ptr, &bytes_read);
                line_ptr += bytes_read;
                fe = &lh->file_names[file - 1];
                if (fe->dir_index)
                  dir = lh->include_dirs[fe->dir_index - 1];
                else
                  dir = comp_dir;
                FUNC5 (fe->name, dir);
              }
	      break;
	    case DW_LNS_set_column:
	      column = FUNC11 (abfd, line_ptr, &bytes_read);
	      line_ptr += bytes_read;
	      break;
	    case DW_LNS_negate_stmt:
	      is_stmt = (!is_stmt);
	      break;
	    case DW_LNS_set_basic_block:
	      basic_block = 1;
	      break;
	    /* Add to the address register of the state machine the
	       address increment value corresponding to special opcode
	       255.  Ie, this value is scaled by the minimum instruction
	       length since special opcode 255 would have scaled the
	       the increment.  */
	    case DW_LNS_const_add_pc:
	      address += (lh->minimum_instruction_length
			  * ((255 - lh->opcode_base) / lh->line_range));
	      break;
	    case DW_LNS_fixed_advance_pc:
	      address += FUNC7 (abfd, line_ptr);
	      line_ptr += 2;
	      break;
	    default:
	      {  /* Unknown standard opcode, ignore it.  */
		int i;
		for (i = 0; i < lh->standard_opcode_lengths[op_code]; i++)
		  {
		    (void) FUNC11 (abfd, line_ptr, &bytes_read);
		    line_ptr += bytes_read;
		  }
	      }
	    }
	}
    }
}