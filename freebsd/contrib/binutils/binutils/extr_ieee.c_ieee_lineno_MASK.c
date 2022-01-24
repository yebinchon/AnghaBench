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
struct ieee_handle {char* filename; char* pending_lineno_filename; scalar_t__ pending_lineno_addr; int lineno_name_indx; int name_indx; char* lineno_filename; int pending_lineno; int /*<<< orphan*/  linenos; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ieee_atn_record_enum ; 
 scalar_t__ ieee_bb_record_enum ; 
 scalar_t__ ieee_be_record_enum ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 scalar_t__ ieee_nn_record ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (void *p, const char *filename, unsigned long lineno, bfd_vma addr)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  FUNC0 (info->filename != NULL);

  /* The HP simulator seems to get confused when more than one line is
     listed for the same address, at least if they are in different
     files.  We handle this by always listing the last line for a
     given address, since that seems to be the one that gdb uses.  */
  if (info->pending_lineno_filename != NULL
      && addr != info->pending_lineno_addr)
    {
      /* Make sure we have a line number block.  */
      if (! FUNC1 (&info->linenos))
	{
	  if (! FUNC2 (info, &info->linenos))
	    return FALSE;
	}
      else
	{
	  info->lineno_name_indx = info->name_indx;
	  ++info->name_indx;
	  if (! FUNC2 (info, &info->linenos)
	      || ! FUNC5 (info, (int) ieee_bb_record_enum)
	      || ! FUNC5 (info, 5)
	      || ! FUNC7 (info, 0)
	      || ! FUNC6 (info, info->filename)
	      || ! FUNC5 (info, (int) ieee_nn_record)
	      || ! FUNC7 (info, info->lineno_name_indx)
	      || ! FUNC6 (info, ""))
	    return FALSE;
	  info->lineno_filename = info->filename;
	}

      if (FUNC8 (info->pending_lineno_filename, info->lineno_filename) != 0)
	{
	  if (FUNC8 (info->filename, info->lineno_filename) != 0)
	    {
	      /* We were not in the main file.  Close the block for the
		 included file.  */
	      if (! FUNC5 (info, (int) ieee_be_record_enum))
		return FALSE;
	      if (FUNC8 (info->filename, info->pending_lineno_filename) == 0)
		{
		  /* We need a new NN record, and we aren't about to
		     output one.  */
		  info->lineno_name_indx = info->name_indx;
		  ++info->name_indx;
		  if (! FUNC5 (info, (int) ieee_nn_record)
		      || ! FUNC7 (info, info->lineno_name_indx)
		      || ! FUNC6 (info, ""))
		    return FALSE;
		}
	    }
	  if (FUNC8 (info->filename, info->pending_lineno_filename) != 0)
	    {
	      /* We are not changing to the main file.  Open a block for
		 the new included file.  */
	      info->lineno_name_indx = info->name_indx;
	      ++info->name_indx;
	      if (! FUNC5 (info, (int) ieee_bb_record_enum)
		  || ! FUNC5 (info, 5)
		  || ! FUNC7 (info, 0)
		  || ! FUNC6 (info, info->pending_lineno_filename)
		  || ! FUNC5 (info, (int) ieee_nn_record)
		  || ! FUNC7 (info, info->lineno_name_indx)
		  || ! FUNC6 (info, ""))
		return FALSE;
	    }
	  info->lineno_filename = info->pending_lineno_filename;
	}

      if (! FUNC3 (info, (int) ieee_atn_record_enum)
	  || ! FUNC7 (info, info->lineno_name_indx)
	  || ! FUNC7 (info, 0)
	  || ! FUNC7 (info, 7)
	  || ! FUNC7 (info, info->pending_lineno)
	  || ! FUNC7 (info, 0)
	  || ! FUNC4 (info, info->lineno_name_indx,
			       info->pending_lineno_addr))
	return FALSE;
    }

  info->pending_lineno_filename = filename;
  info->pending_lineno = lineno;
  info->pending_lineno_addr = addr;

  return TRUE;
}