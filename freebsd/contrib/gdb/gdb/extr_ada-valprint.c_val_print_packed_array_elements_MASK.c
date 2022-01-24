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
struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef  int LONGEST ;

/* Variables and functions */
 int HOST_CHAR_BIT ; 
 unsigned long FUNC0 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 struct type* FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 struct value* FUNC5 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned long,struct type*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,struct type*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct type*) ; 
 int /*<<< orphan*/  FUNC12 (struct ui_file*,char*,...) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ prettyprint_arrays ; 
 unsigned int print_max ; 
 int /*<<< orphan*/  FUNC16 (int,struct ui_file*) ; 
 unsigned int repeat_count_threshold ; 
 int /*<<< orphan*/  FUNC17 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ui_file*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct value*) ; 
 struct value* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21 (struct type *type, char *valaddr,
				 int bitoffset, struct ui_file *stream,
				 int format, int recurse,
				 enum val_prettyprint pretty)
{
  unsigned int i;
  unsigned int things_printed = 0;
  unsigned len;
  struct type *elttype;
  unsigned eltlen;
  /* Position of the array element we are examining to see
     whether it is repeated.  */
  unsigned int rep1;
  /* Number of repetitions we have detected so far.  */
  unsigned int reps;
  unsigned long bitsize = FUNC0 (type, 0);
  struct value *mark = FUNC19 ();

  elttype = FUNC3 (type);
  eltlen = FUNC2 (FUNC11 (elttype));

  {
    LONGEST low, high;
    if (FUNC13 (FUNC1 (type, 0), &low, &high) < 0)
      len = 1;
    else
      len = high - low + 1;
  }

  i = 0;
  FUNC6 (i, elttype);

  while (i < len && things_printed < print_max)
    {
      struct value *v0, *v1;
      int i0;

      if (i != 0)
	{
	  if (prettyprint_arrays)
	    {
	      FUNC12 (stream, ",\n");
	      FUNC16 (2 + 2 * recurse, stream);
	    }
	  else
	    {
	      FUNC12 (stream, ", ");
	    }
	}
      FUNC20 (FUNC15 (2 + 2 * recurse));

      i0 = i;
      v0 = FUNC5 (NULL, valaddr,
					   (i0 * bitsize) / HOST_CHAR_BIT,
					   (i0 * bitsize) % HOST_CHAR_BIT,
					   bitsize, elttype);
      while (1)
	{
	  i += 1;
	  if (i >= len)
	    break;
	  v1 = FUNC5 (NULL, valaddr,
					       (i * bitsize) / HOST_CHAR_BIT,
					       (i * bitsize) % HOST_CHAR_BIT,
					       bitsize, elttype);
	  if (FUNC14 (FUNC4 (v0), FUNC4 (v1), eltlen) != 0)
	    break;
	}

      if (i - i0 > repeat_count_threshold)
	{
	  FUNC17 (elttype, FUNC4 (v0), 0, 0, stream, format,
		     0, recurse + 1, pretty);
	  FUNC9 (i - i0);
	  FUNC12 (stream, " <repeats %u times>", i - i0);
	  FUNC10 ();

	}
      else
	{
	  int j;
	  for (j = i0; j < i; j += 1)
	    {
	      if (j > i0)
		{
		  if (prettyprint_arrays)
		    {
		      FUNC12 (stream, ",\n");
		      FUNC16 (2 + 2 * recurse, stream);
		    }
		  else
		    {
		      FUNC12 (stream, ", ");
		    }
		  FUNC20 (FUNC15 (2 + 2 * recurse));
		}
	      FUNC17 (elttype, FUNC4 (v0), 0, 0, stream, format,
			 0, recurse + 1, pretty);
	      FUNC8 ();
	    }
	}
      things_printed += i - i0;
    }
  FUNC7 ();
  if (i < len)
    {
      FUNC12 (stream, "...");
    }

  FUNC18 (mark);
}