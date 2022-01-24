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
struct work_stuff {int ntmpl_args; int /*<<< orphan*/ * previous_argument; scalar_t__* tmpl_argvec; scalar_t__ typevec_size; int /*<<< orphan*/ * typevec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct work_stuff*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (struct work_stuff *work)
{
  /* Discard the remembered types, if any.  */

  FUNC0 (work);
  if (work -> typevec != NULL)
    {
      FUNC1 ((char *) work -> typevec);
      work -> typevec = NULL;
      work -> typevec_size = 0;
    }
  if (work->tmpl_argvec)
    {
      int i;

      for (i = 0; i < work->ntmpl_args; i++)
	if (work->tmpl_argvec[i])
	  FUNC1 ((char*) work->tmpl_argvec[i]);

      FUNC1 ((char*) work->tmpl_argvec);
      work->tmpl_argvec = NULL;
    }
  if (work->previous_argument)
    {
      FUNC2 (work->previous_argument);
      FUNC1 ((char*) work->previous_argument);
      work->previous_argument = NULL;
    }
}