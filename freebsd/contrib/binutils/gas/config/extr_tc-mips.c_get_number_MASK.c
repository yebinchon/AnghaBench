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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 long FUNC5 (int /*<<< orphan*/ ) ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC6 (char*,char,char) ; 

__attribute__((used)) static long
FUNC7 (void)
{
  int negative = 0;
  long val = 0;

  if (*input_line_pointer == '-')
    {
      ++input_line_pointer;
      negative = 1;
    }
  if (!FUNC0 (*input_line_pointer))
    FUNC3 (FUNC2("expected simple number"));
  if (input_line_pointer[0] == '0')
    {
      if (input_line_pointer[1] == 'x')
	{
	  input_line_pointer += 2;
	  while (FUNC1 (*input_line_pointer))
	    {
	      val <<= 4;
	      val |= FUNC5 (*input_line_pointer++);
	    }
	  return negative ? -val : val;
	}
      else
	{
	  ++input_line_pointer;
	  while (FUNC0 (*input_line_pointer))
	    {
	      val <<= 3;
	      val |= *input_line_pointer++ - '0';
	    }
	  return negative ? -val : val;
	}
    }
  if (!FUNC0 (*input_line_pointer))
    {
      FUNC6 (FUNC2(" *input_line_pointer == '%c' 0x%02x\n"),
	      *input_line_pointer, *input_line_pointer);
      FUNC4 (FUNC2("invalid number"));
      return -1;
    }
  while (FUNC0 (*input_line_pointer))
    {
      val *= 10;
      val += *input_line_pointer++ - '0';
    }
  return negative ? -val : val;
}