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
typedef  scalar_t__ offsetT ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ flag_mri ; 
 char* FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 char* FUNC10 (int,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char) ; 
 char* FUNC13 (char*) ; 

void
FUNC14 (int float_type)
{
  offsetT count;
  int flen;
  char temp[MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT];
  char *stop = NULL;
  char stopc = 0;

  if (flag_mri)
    stop = FUNC13 (&stopc);

  count = FUNC6 ();

  FUNC1 ();
  if (*input_line_pointer != ',')
    {
      FUNC3 (FUNC2("missing value"));
      FUNC8 ();
      if (flag_mri)
	FUNC12 (stop, stopc);
      return;
    }

  ++input_line_pointer;

  FUNC1 ();

  /* Skip any 0{letter} that may be present.  Don't even check if the
   * letter is legal.  */
  if (input_line_pointer[0] == '0'
      && FUNC0 (input_line_pointer[1]))
    input_line_pointer += 2;

  /* Accept :xxxx, where the x's are hex digits, for a floating point
     with the exact digits specified.  */
  if (input_line_pointer[0] == ':')
    {
      flen = FUNC7 (float_type, temp);
      if (flen < 0)
	{
	  FUNC8 ();
	  if (flag_mri)
	    FUNC12 (stop, stopc);
	  return;
	}
    }
  else
    {
      char *err;

      err = FUNC10 (float_type, temp, &flen);
      FUNC9 (flen <= MAXIMUM_NUMBER_OF_CHARS_FOR_FLOAT);
      FUNC9 (flen > 0);
      if (err)
	{
	  FUNC3 (FUNC2("bad floating literal: %s"), err);
	  FUNC8 ();
	  if (flag_mri)
	    FUNC12 (stop, stopc);
	  return;
	}
    }

  while (--count >= 0)
    {
      char *p;

      p = FUNC5 (flen);
      FUNC11 (p, temp, (unsigned int) flen);
    }

  FUNC4 ();

  if (flag_mri)
    FUNC12 (stop, stopc);
}