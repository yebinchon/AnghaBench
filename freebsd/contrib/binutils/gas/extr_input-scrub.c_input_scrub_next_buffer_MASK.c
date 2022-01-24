#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ len; char* ptr; } ;

/* Variables and functions */
 int AFTER_SIZE ; 
 char* AFTER_STRING ; 
 int BEFORE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int buffer_length ; 
 char* buffer_start ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ from_sb ; 
 scalar_t__ from_sb_is_expansion ; 
 scalar_t__ FUNC5 () ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  macro_nest ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/ * next_saved_file ; 
 int partial_size ; 
 char* partial_where ; 
 char* save_source ; 
 scalar_t__ sb_index ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 char* FUNC12 (char*,int) ; 

char *
FUNC13 (char **bufp)
{
  register char *limit;		/*->just after last char of buffer.  */

  if (sb_index >= 0)
    {
      if (sb_index >= from_sb.len)
	{
	  FUNC11 (&from_sb);
	  if (from_sb_is_expansion
	      )
	    {
	      FUNC4 (macro_nest);
#ifdef md_macro_end
	      /* Allow the target to clean up per-macro expansion
	         data.  */
	      md_macro_end ();
#endif
	    }
	  --macro_nest;
	  partial_where = NULL;
	  if (next_saved_file != NULL)
	    *bufp = FUNC7 (next_saved_file);
	  return partial_where;
	}

      partial_where = from_sb.ptr + from_sb.len;
      partial_size = 0;
      *bufp = from_sb.ptr + sb_index;
      sb_index = from_sb.len;
      return partial_where;
    }

  *bufp = buffer_start + BEFORE_SIZE;

  if (partial_size)
    {
      FUNC10 (buffer_start + BEFORE_SIZE, partial_where,
	      (unsigned int) partial_size);
      FUNC9 (buffer_start + BEFORE_SIZE, save_source, AFTER_SIZE);
    }
  limit = FUNC6 (buffer_start
				       + BEFORE_SIZE
				       + partial_size);
  if (limit)
    {
      register char *p;		/* Find last newline.  */
      /* Terminate the buffer to avoid confusing TC_EOL_IN_INSN.  */
      *limit = '\0';
      for (p = limit - 1; *p != '\n' || FUNC1 (p); --p)
	;
      ++p;

      while (p <= buffer_start + BEFORE_SIZE)
	{
	  int limoff;

	  limoff = limit - buffer_start;
	  buffer_length += FUNC5 ();
	  buffer_start = FUNC12 (buffer_start,
				   (BEFORE_SIZE
				    + 2 * buffer_length
				    + AFTER_SIZE));
	  *bufp = buffer_start + BEFORE_SIZE;
	  limit = FUNC6 (buffer_start + limoff);

	  if (limit == NULL)
	    {
	      FUNC3 (FUNC2("partial line at end of file ignored"));
	      partial_where = NULL;
	      if (next_saved_file)
		*bufp = FUNC7 (next_saved_file);
	      return NULL;
	    }

	  /* Terminate the buffer to avoid confusing TC_EOL_IN_INSN.  */
	  *limit = '\0';
	  for (p = limit - 1; *p != '\n' || FUNC1 (p); --p)
	    ;
	  ++p;
	}

      partial_where = p;
      partial_size = limit - p;
      FUNC9 (save_source, partial_where, (int) AFTER_SIZE);
      FUNC9 (partial_where, AFTER_STRING, (int) AFTER_SIZE);
    }
  else
    {
      partial_where = 0;
      if (partial_size > 0)
	{
	  FUNC3 (FUNC2("partial line at end of file ignored"));
	}

      /* Tell the listing we've finished the file.  */
      FUNC0 ();

      /* If we should pop to another file at EOF, do it.  */
      if (next_saved_file)
	{
	  *bufp = FUNC7 (next_saved_file);	/* Pop state */
	  /* partial_where is now correct to return, since we popped it.  */
	}
    }
  return (partial_where);
}