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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char) ; 
 int FUNC4 (char) ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ target_big_endian ; 

__attribute__((used)) static int
FUNC6 (int float_type, char *bytes)
{
  int length;
  int i;

  switch (float_type)
    {
    case 'f':
    case 'F':
    case 's':
    case 'S':
      length = 4;
      break;

    case 'd':
    case 'D':
    case 'r':
    case 'R':
      length = 8;
      break;

    case 'x':
    case 'X':
      length = 12;
      break;

    case 'p':
    case 'P':
      length = 12;
      break;

    default:
      FUNC1 (FUNC0("unknown floating type type '%c'"), float_type);
      return -1;
    }

  /* It would be nice if we could go through expression to parse the
     hex constant, but if we get a bignum it's a pain to sort it into
     the buffer correctly.  */
  i = 0;
  while (FUNC3 (*input_line_pointer) || *input_line_pointer == '_')
    {
      int d;

      /* The MRI assembler accepts arbitrary underscores strewn about
	 through the hex constant, so we ignore them as well.  */
      if (*input_line_pointer == '_')
	{
	  ++input_line_pointer;
	  continue;
	}

      if (i >= length)
	{
	  FUNC2 (FUNC0("floating point constant too large"));
	  return -1;
	}
      d = FUNC4 (*input_line_pointer) << 4;
      ++input_line_pointer;
      while (*input_line_pointer == '_')
	++input_line_pointer;
      if (FUNC3 (*input_line_pointer))
	{
	  d += FUNC4 (*input_line_pointer);
	  ++input_line_pointer;
	}
      if (target_big_endian)
	bytes[i] = d;
      else
	bytes[length - i - 1] = d;
      ++i;
    }

  if (i < length)
    {
      if (target_big_endian)
	FUNC5 (bytes + i, 0, length - i);
      else
	FUNC5 (bytes, 0, length - i);
    }

  return length;
}