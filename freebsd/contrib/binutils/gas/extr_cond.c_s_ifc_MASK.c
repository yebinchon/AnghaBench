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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cond_obstack ; 
 struct conditional_frame* current_cframe ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ flag_mri ; 
 char* FUNC4 (char,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct conditional_frame*) ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct conditional_frame*,int) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 

void
FUNC11 (int arg)
{
  char *stop = NULL;
  char stopc;
  char *s1, *s2;
  int len1, len2;
  int res;
  struct conditional_frame cframe;

  if (flag_mri)
    stop = FUNC8 (&stopc);

  s1 = FUNC4 (',', &len1);

  if (*input_line_pointer != ',')
    FUNC2 (FUNC1("bad format for ifc or ifnc"));
  else
    ++input_line_pointer;

  s2 = FUNC4 (';', &len2);

  res = len1 == len2 && FUNC10 (s1, s2, len1) == 0;

  FUNC5 (&cframe);
  cframe.ignoring = cframe.dead_tree || ! (res ^ arg);
  current_cframe = ((struct conditional_frame *)
		    FUNC9 (&cond_obstack, &cframe, sizeof (cframe)));

  if (FUNC0 ()
      && cframe.ignoring
      && (cframe.previous_cframe == NULL
	  || ! cframe.previous_cframe->ignoring))
    FUNC6 (2);

  if (flag_mri)
    FUNC7 (stop, stopc);

  FUNC3 ();
}