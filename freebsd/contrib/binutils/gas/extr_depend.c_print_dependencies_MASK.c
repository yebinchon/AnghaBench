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
struct dependency {int /*<<< orphan*/  file; struct dependency* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_WT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ column ; 
 struct dependency* dep_chain ; 
 int /*<<< orphan*/ * dep_file ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out_file_name ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char) ; 

void
FUNC6 (void)
{
  FILE *f;
  struct dependency *dep;

  if (dep_file == NULL)
    return;

  f = FUNC3 (dep_file, FOPEN_WT);
  if (f == NULL)
    {
      FUNC1 (FUNC0("can't open `%s' for writing"), dep_file);
      return;
    }

  column = 0;
  FUNC5 (f, out_file_name, ':');
  for (dep = dep_chain; dep != NULL; dep = dep->next)
    FUNC5 (f, dep->file, ' ');

  FUNC4 ('\n', f);

  if (FUNC2 (f))
    FUNC1 (FUNC0("can't close `%s'"), dep_file);
}