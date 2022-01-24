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
struct ui_stream {int /*<<< orphan*/  stream; } ;
struct ui_out {int dummy; } ;
struct disassemble_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  QUIT ; 
 scalar_t__ FUNC0 (scalar_t__,struct disassemble_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,char**,int*,char**,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 struct cleanup* FUNC3 (struct ui_out*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_out*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ui_out*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_out*,char*,struct ui_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct ui_out*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ui_out*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11 (struct ui_out *uiout, struct disassemble_info * di,
	    CORE_ADDR low, CORE_ADDR high,
	    int how_many, struct ui_stream *stb)
{
  int num_displayed = 0;
  CORE_ADDR pc;

  /* parts of the symbolic representation of the address */
  int unmapped;
  int offset;
  int line;
  struct cleanup *ui_out_chain;

  for (pc = low; pc < high;)
    {
      char *filename = NULL;
      char *name = NULL;

      QUIT;
      if (how_many >= 0)
	{
	  if (num_displayed >= how_many)
	    break;
	  else
	    num_displayed++;
	}
      ui_out_chain = FUNC3 (uiout, NULL);
      FUNC5 (uiout, "address", pc);

      if (!FUNC1 (pc, 0, &name, &offset, &filename,
				   &line, &unmapped))
	{
	  /* We don't care now about line, filename and
	     unmapped. But we might in the future. */
	  FUNC9 (uiout, " <");
	  FUNC8 (uiout, "func-name", name);
	  FUNC9 (uiout, "+");
	  FUNC6 (uiout, "offset", offset);
	  FUNC9 (uiout, ">:\t");
	}
      else
	FUNC9 (uiout, ":\t");

      if (filename != NULL)
	FUNC10 (filename);
      if (name != NULL)
	FUNC10 (name);

      FUNC4 (stb->stream);
      pc += FUNC0 (pc, di);
      FUNC7 (uiout, "inst", stb);
      FUNC4 (stb->stream);
      FUNC2 (ui_out_chain);
      FUNC9 (uiout, "\n");
    }
  return num_displayed;
}