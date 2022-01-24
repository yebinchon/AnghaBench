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
typedef  int offsetT ;
struct TYPE_3__ {scalar_t__ X_op; int /*<<< orphan*/  X_unsigned; } ;
typedef  TYPE_1__ expressionS ;
typedef  int addressT ;

/* Variables and functions */
 scalar_t__ O_absent ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* input_line_pointer ; 

offsetT
FUNC6 (int align_bytes)
{
  expressionS exp;
  addressT align;

  FUNC0 ();
  if (*input_line_pointer != ',')
    {
    no_align:
      FUNC2 (FUNC1("expected alignment after size"));
      FUNC5 ();
      return -1;
    }

  input_line_pointer++;
  FUNC0 ();

  align = FUNC4 (&exp);
  if (exp.X_op == O_absent)
    goto no_align;

  if (!exp.X_unsigned)
    {
      FUNC3 (FUNC1("alignment negative; 0 assumed"));
      align = 0;
    }

  if (align_bytes && align != 0)
    {
      /* convert to a power of 2 alignment */
      unsigned int alignp2 = 0;
      while ((align & 1) == 0)
	align >>= 1, ++alignp2;
      if (align != 1)
	{
	  FUNC2 (FUNC1("alignment not a power of 2"));
	  FUNC5 ();
	  return -1;
	}
      align = alignp2;
    }
  return align;
}