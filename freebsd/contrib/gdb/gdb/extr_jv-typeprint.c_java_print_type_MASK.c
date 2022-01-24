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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*,struct ui_file*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct type*,struct ui_file*,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 

void
FUNC4 (struct type *type, char *varstring, struct ui_file *stream,
		 int show, int level)
{
  int demangled_args;

  FUNC2 (type, stream, show, level);

  if (varstring != NULL && *varstring != '\0')
    {
      FUNC1 (" ", stream);
      FUNC1 (varstring, stream);
    }

  /* For demangled function names, we have the arglist as part of the name,
     so don't print an additional pair of ()'s */

  demangled_args = FUNC3 (varstring, '(') != NULL;
  FUNC0 (type, stream, show, 0, demangled_args);
}