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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_V9 ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

const char *
FUNC5 (rtx dest, int label, rtx insn)
{
  static char string[64];
  bool v9_form = false;
  char *p;

  if (TARGET_V9 && FUNC1 ())
    {
      int delta = (FUNC0 (FUNC2 (dest))
		   - FUNC0 (FUNC2 (insn)));
      /* Leave some instructions for "slop".  */
      if (delta >= -260000 && delta < 260000)
	v9_form = true;
    }

  if (v9_form)
    FUNC4 (string, "ba%*,pt\t%%xcc, ");
  else
    FUNC4 (string, "b%*\t");

  p = FUNC3 (string, '\0');
  *p++ = '%';
  *p++ = 'l';
  *p++ = '0' + label;
  *p++ = '%';
  *p++ = '(';
  *p = '\0';

  return string;
}