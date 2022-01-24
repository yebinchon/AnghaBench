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
struct list {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  ar_addlib_doer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct list*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * obfd ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 char* program_name ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC5 (char *name, struct list *list)
{
  if (obfd == NULL)
    {
      FUNC1 (stderr, FUNC0("%s: no output archive specified yet\n"), program_name);
      FUNC3 ();
    }
  else
    {
      bfd *arch;

      arch = FUNC4 (name, (char *) NULL);
      if (arch != NULL)
	FUNC2 (arch, ar_addlib_doer, list);

      /* Don't close the bfd, since it will make the elements disappear.  */
    }
}