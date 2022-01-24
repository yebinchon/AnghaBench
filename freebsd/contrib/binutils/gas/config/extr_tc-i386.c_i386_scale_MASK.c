#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int offsetT ;
struct TYPE_2__ {int log2_scale_factor; scalar_t__ index_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 TYPE_1__ i ; 
 char* input_line_pointer ; 

__attribute__((used)) static char *
FUNC4 (char *scale)
{
  offsetT val;
  char *save = input_line_pointer;

  input_line_pointer = scale;
  val = FUNC3 ();

  switch (val)
    {
    case 1:
      i.log2_scale_factor = 0;
      break;
    case 2:
      i.log2_scale_factor = 1;
      break;
    case 4:
      i.log2_scale_factor = 2;
      break;
    case 8:
      i.log2_scale_factor = 3;
      break;
    default:
      {
	char sep = *input_line_pointer;

	*input_line_pointer = '\0';
	FUNC1 (FUNC0("expecting scale factor of 1, 2, 4, or 8: got `%s'"),
		scale);
	*input_line_pointer = sep;
	input_line_pointer = save;
	return NULL;
      }
    }
  if (i.log2_scale_factor != 0 && i.index_reg == 0)
    {
      FUNC2 (FUNC0("scale factor of %d without an index register"),
	       1 << i.log2_scale_factor);
#if SCALE1_WHEN_NO_INDEX
      i.log2_scale_factor = 0;
#endif
    }
  scale = input_line_pointer;
  input_line_pointer = save;
  return scale;
}