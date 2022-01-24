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

/* Variables and functions */
 int SHF_GROUP ; 
 int SHF_MERGE ; 
 int SHT_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ flag_mri ; 
 int FUNC6 () ; 
 char FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  now_subseg ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,int,char*,int,int) ; 
 int FUNC12 (char*,int) ; 
 char* FUNC13 () ; 
 int FUNC14 (char*,int) ; 
 int FUNC15 (char*,int) ; 
 int /*<<< orphan*/  previous_section ; 
 int /*<<< orphan*/  previous_subsection ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (char*) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 

void
FUNC19 (int push)
{
  char *name, *group_name, *beg;
  int type, attr, dummy;
  int entsize;
  int linkonce;

#ifndef TC_I370
  if (flag_mri)
    {
      char mri_type;

#ifdef md_flush_pending_output
      md_flush_pending_output ();
#endif

      previous_section = now_seg;
      previous_subsection = now_subseg;

      FUNC16 (&mri_type);

#ifdef md_elf_section_change_hook
      md_elf_section_change_hook ();
#endif

      return;
    }
#endif /* ! defined (TC_I370) */

  name = FUNC13 ();
  if (name == NULL)
    return;
  type = SHT_NULL;
  attr = 0;
  group_name = NULL;
  entsize = 0;
  linkonce = 0;

  if (*input_line_pointer == ',')
    {
      /* Skip the comma.  */
      ++input_line_pointer;
      FUNC0 ();

      if (*input_line_pointer == '"')
	{
	  beg = FUNC4 (&dummy);
	  if (beg == NULL)
	    {
	      FUNC8 ();
	      return;
	    }
	  attr |= FUNC12 (beg, FUNC17 (beg));

	  FUNC0 ();
	  if (*input_line_pointer == ',')
	    {
	      char c;
	      char *save = input_line_pointer;

	      ++input_line_pointer;
	      FUNC0 ();
	      c = *input_line_pointer;
	      if (c == '"')
		{
		  beg = FUNC4 (&dummy);
		  if (beg == NULL)
		    {
		      FUNC8 ();
		      return;
		    }
		  type = FUNC14 (beg, FUNC17 (beg));
		}
	      else if (c == '@' || c == '%')
		{
		  beg = ++input_line_pointer;
		  c = FUNC7 ();
		  *input_line_pointer = c;
		  type = FUNC14 (beg, input_line_pointer - beg);
		}
	      else
		input_line_pointer = save;
	    }

	  FUNC0 ();
	  if ((attr & SHF_MERGE) != 0 && *input_line_pointer == ',')
	    {
	      ++input_line_pointer;
	      FUNC0 ();
	      entsize = FUNC6 ();
	      FUNC0 ();
	      if (entsize < 0)
		{
		  FUNC3 (FUNC1("invalid merge entity size"));
		  attr &= ~SHF_MERGE;
		  entsize = 0;
		}
	    }
	  else if ((attr & SHF_MERGE) != 0)
	    {
	      FUNC3 (FUNC1("entity size for SHF_MERGE not specified"));
	      attr &= ~SHF_MERGE;
	    }

	  if ((attr & SHF_GROUP) != 0 && *input_line_pointer == ',')
	    {
	      ++input_line_pointer;
	      group_name = FUNC13 ();
	      if (group_name == NULL)
		attr &= ~SHF_GROUP;
	      else if (FUNC18 (input_line_pointer, ",comdat", 7) == 0)
		{
		  input_line_pointer += 7;
		  linkonce = 1;
		}
	      else if (FUNC18 (name, ".gnu.linkonce", 13) == 0)
		linkonce = 1;
	    }
	  else if ((attr & SHF_GROUP) != 0)
	    {
	      FUNC3 (FUNC1("group name for SHF_GROUP not specified"));
	      attr &= ~SHF_GROUP;
	    }
	}
      else
	{
	  do
	    {
	      char c;

	      FUNC0 ();
	      if (*input_line_pointer != '#')
		{
		  FUNC2 (FUNC1("character following name is not '#'"));
		  FUNC8 ();
		  return;
		}
	      beg = ++input_line_pointer;
	      c = FUNC7 ();
	      *input_line_pointer = c;

	      attr |= FUNC15 (beg, input_line_pointer - beg);

	      FUNC0 ();
	    }
	  while (*input_line_pointer++ == ',');
	  --input_line_pointer;
	}
    }

  FUNC5 ();

  FUNC11 (name, type, attr, entsize, group_name, linkonce, push);
}