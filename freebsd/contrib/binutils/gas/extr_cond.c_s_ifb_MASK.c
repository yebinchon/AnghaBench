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
struct conditional_frame {int ignoring; TYPE_1__* previous_cframe; scalar_t__ dead_tree; } ;
typedef  int /*<<< orphan*/  cframe ;
struct TYPE_2__ {int /*<<< orphan*/  ignoring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cond_obstack ; 
 struct conditional_frame* current_cframe ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct conditional_frame*) ; 
 scalar_t__* input_line_pointer ; 
 int* is_end_of_line ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct conditional_frame*,int) ; 

void
FUNC6 (int test_blank)
{
  struct conditional_frame cframe;

  FUNC3 (&cframe);
  
  if (cframe.dead_tree)
    cframe.ignoring = 1;
  else
    {
      int is_eol;

      FUNC1 ();
      is_eol = is_end_of_line[(unsigned char) *input_line_pointer];
      cframe.ignoring = (test_blank == !is_eol);
    }

  current_cframe = ((struct conditional_frame *)
		    FUNC5 (&cond_obstack, &cframe,
				  sizeof (cframe)));

  if (FUNC0 ()
      && cframe.ignoring
      && (cframe.previous_cframe == NULL
	  || ! cframe.previous_cframe->ignoring))
    FUNC4 (2);

  FUNC2 ();
}