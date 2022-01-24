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
typedef  char offsetT ;

/* Variables and functions */
 unsigned int ALIGN_LIMIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,char*,int,int) ; 
 scalar_t__ flag_mri ; 
 void* FUNC7 () ; 
 char* input_line_pointer ; 
 scalar_t__* is_end_of_line ; 
 int /*<<< orphan*/  FUNC8 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11 (int arg, int bytes_p)
{
  unsigned int align_limit = ALIGN_LIMIT;
  unsigned int align;
  char *stop = NULL;
  char stopc = 0;
  offsetT fill = 0;
  int max;
  int fill_p;

  if (flag_mri)
    stop = FUNC10 (&stopc);

  if (is_end_of_line[(unsigned char) *input_line_pointer])
    {
      if (arg < 0)
	align = 0;
      else
	align = arg;	/* Default value from pseudo-op table.  */
    }
  else
    {
      align = FUNC7 ();
      FUNC0 ();
    }

  if (bytes_p)
    {
      /* Convert to a power of 2.  */
      if (align != 0)
	{
	  unsigned int i;

	  for (i = 0; (align & 1) == 0; align >>= 1, ++i)
	    ;
	  if (align != 1)
	    FUNC3 (FUNC1("alignment not a power of 2"));

	  align = i;
	}
    }

  if (align > align_limit)
    {
      align = align_limit;
      FUNC4 (FUNC1("alignment too large: %u assumed"), align);
    }

  if (*input_line_pointer != ',')
    {
      fill_p = 0;
      max = 0;
    }
  else
    {
      ++input_line_pointer;
      if (*input_line_pointer == ',')
	fill_p = 0;
      else
	{
	  fill = FUNC7 ();
	  FUNC0 ();
	  fill_p = 1;
	}

      if (*input_line_pointer != ',')
	max = 0;
      else
	{
	  ++input_line_pointer;
	  max = FUNC7 ();
	}
    }

  if (!fill_p)
    {
      if (arg < 0)
	FUNC4 (FUNC1("expected fill pattern missing"));
      FUNC6 (align, (char *) NULL, 0, max);
    }
  else
    {
      int fill_len;

      if (arg >= 0)
	fill_len = 1;
      else
	fill_len = -arg;
      if (fill_len <= 1)
	{
	  char fill_char;

	  fill_char = fill;
	  FUNC6 (align, &fill_char, fill_len, max);
	}
      else
	{
	  char ab[16];

	  if ((size_t) fill_len > sizeof ab)
	    FUNC2 ();
	  FUNC8 (ab, fill, fill_len);
	  FUNC6 (align, ab, fill_len, max);
	}
    }

  FUNC5 ();

  if (flag_mri)
    FUNC9 (stop, stopc);
}