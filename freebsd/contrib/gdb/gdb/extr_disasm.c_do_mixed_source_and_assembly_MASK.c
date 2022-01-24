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
struct ui_stream {int dummy; } ;
struct ui_out {int dummy; } ;
struct symtab_and_line {scalar_t__ end; } ;
struct symtab {int dummy; } ;
struct linetable_entry {scalar_t__ pc; scalar_t__ line; } ;
struct disassemble_info {int dummy; } ;
struct dis_line_entry {scalar_t__ line; scalar_t__ start_pc; scalar_t__ end_pc; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  compare_lines ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 scalar_t__ FUNC2 (struct ui_out*,struct disassemble_info*,scalar_t__,scalar_t__,int,struct ui_stream*) ; 
 struct symtab_and_line FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC5 (struct ui_out*,char*) ; 
 struct cleanup* FUNC6 (struct ui_out*,char*) ; 
 int /*<<< orphan*/  null_cleanup ; 
 int /*<<< orphan*/  FUNC7 (struct symtab*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dis_line_entry*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ui_out*,char*) ; 

__attribute__((used)) static void
FUNC10 (struct ui_out *uiout,
			      struct disassemble_info *di, int nlines,
			      struct linetable_entry *le,
			      CORE_ADDR low, CORE_ADDR high,
			      struct symtab *symtab,
			      int how_many, struct ui_stream *stb)
{
  int newlines = 0;
  struct dis_line_entry *mle;
  struct symtab_and_line sal;
  int i;
  int out_of_order = 0;
  int next_line = 0;
  CORE_ADDR pc;
  int num_displayed = 0;
  struct cleanup *ui_out_chain;
  struct cleanup *ui_out_tuple_chain = FUNC4 (null_cleanup, 0);
  struct cleanup *ui_out_list_chain = FUNC4 (null_cleanup, 0);

  mle = (struct dis_line_entry *) FUNC0 (nlines
					  * sizeof (struct dis_line_entry));

  /* Copy linetable entries for this function into our data
     structure, creating end_pc's and setting out_of_order as
     appropriate.  */

  /* First, skip all the preceding functions.  */

  for (i = 0; i < nlines - 1 && le[i].pc < low; i++);

  /* Now, copy all entries before the end of this function.  */

  for (; i < nlines - 1 && le[i].pc < high; i++)
    {
      if (le[i].line == le[i + 1].line && le[i].pc == le[i + 1].pc)
	continue;		/* Ignore duplicates */

      /* Skip any end-of-function markers.  */
      if (le[i].line == 0)
	continue;

      mle[newlines].line = le[i].line;
      if (le[i].line > le[i + 1].line)
	out_of_order = 1;
      mle[newlines].start_pc = le[i].pc;
      mle[newlines].end_pc = le[i + 1].pc;
      newlines++;
    }

  /* If we're on the last line, and it's part of the function,
     then we need to get the end pc in a special way.  */

  if (i == nlines - 1 && le[i].pc < high)
    {
      mle[newlines].line = le[i].line;
      mle[newlines].start_pc = le[i].pc;
      sal = FUNC3 (le[i].pc, 0);
      mle[newlines].end_pc = sal.end;
      newlines++;
    }

  /* Now, sort mle by line #s (and, then by addresses within
     lines). */

  if (out_of_order)
    FUNC8 (mle, newlines, sizeof (struct dis_line_entry), compare_lines);

  /* Now, for each line entry, emit the specified lines (unless
     they have been emitted before), followed by the assembly code
     for that line.  */

  ui_out_chain = FUNC5 (uiout, "asm_insns");

  for (i = 0; i < newlines; i++)
    {
      /* Print out everything from next_line to the current line.  */
      if (mle[i].line >= next_line)
	{
	  if (next_line != 0)
	    {
	      /* Just one line to print. */
	      if (next_line == mle[i].line)
		{
		  ui_out_tuple_chain
		    = FUNC6 (uiout,
							   "src_and_asm_line");
		  FUNC7 (symtab, next_line, mle[i].line + 1, 0);
		}
	      else
		{
		  /* Several source lines w/o asm instructions associated. */
		  for (; next_line < mle[i].line; next_line++)
		    {
		      struct cleanup *ui_out_list_chain_line;
		      struct cleanup *ui_out_tuple_chain_line;
		      
		      ui_out_tuple_chain_line
			= FUNC6 (uiout,
							       "src_and_asm_line");
		      FUNC7 (symtab, next_line, next_line + 1,
					  0);
		      ui_out_list_chain_line
			= FUNC5 (uiout,
							      "line_asm_insn");
		      FUNC1 (ui_out_list_chain_line);
		      FUNC1 (ui_out_tuple_chain_line);
		    }
		  /* Print the last line and leave list open for
		     asm instructions to be added. */
		  ui_out_tuple_chain
		    = FUNC6 (uiout,
							   "src_and_asm_line");
		  FUNC7 (symtab, next_line, mle[i].line + 1, 0);
		}
	    }
	  else
	    {
	      ui_out_tuple_chain
		= FUNC6 (uiout, "src_and_asm_line");
	      FUNC7 (symtab, mle[i].line, mle[i].line + 1, 0);
	    }

	  next_line = mle[i].line + 1;
	  ui_out_list_chain
	    = FUNC5 (uiout, "line_asm_insn");
	}

      num_displayed += FUNC2 (uiout, di, mle[i].start_pc, mle[i].end_pc,
				   how_many, stb);

      /* When we've reached the end of the mle array, or we've seen the last
         assembly range for this source line, close out the list/tuple.  */
      if (i == (newlines - 1) || mle[i + 1].line > mle[i].line)
	{
	  FUNC1 (ui_out_list_chain);
	  FUNC1 (ui_out_tuple_chain);
	  ui_out_tuple_chain = FUNC4 (null_cleanup, 0);
	  ui_out_list_chain = FUNC4 (null_cleanup, 0);
	  FUNC9 (uiout, "\n");
	}
      if (how_many >= 0 && num_displayed >= how_many)
	break;
    }
  FUNC1 (ui_out_chain);
}