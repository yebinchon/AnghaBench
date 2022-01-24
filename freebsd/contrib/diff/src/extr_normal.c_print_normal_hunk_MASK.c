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
struct change {int dummy; } ;
typedef  size_t lin ;
typedef  enum changes { ____Placeholder_changes } changes ;
struct TYPE_3__ {int /*<<< orphan*/ * linbuf; } ;

/* Variables and functions */
 int CHANGED ; 
 int NEW ; 
 int OLD ; 
 int FUNC0 (struct change*,size_t*,size_t*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* change_letter ; 
 TYPE_1__* files ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  outfile ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char,TYPE_1__*,size_t,size_t) ; 

__attribute__((used)) static void
FUNC5 (struct change *hunk)
{
  lin first0, last0, first1, last1;
  register lin i;

  /* Determine range of line numbers involved in each file.  */
  enum changes changes = FUNC0 (hunk, &first0, &last0, &first1, &last1);
  if (!changes)
    return;

  FUNC1 ();

  /* Print out the line number header for this hunk */
  FUNC4 (',', &files[0], first0, last0);
  FUNC2 (outfile, "%c", change_letter[changes]);
  FUNC4 (',', &files[1], first1, last1);
  FUNC2 (outfile, "\n");

  /* Print the lines that the first file has.  */
  if (changes & OLD)
    for (i = first0; i <= last0; i++)
      FUNC3 ("<", &files[0].linbuf[i]);

  if (changes == CHANGED)
    FUNC2 (outfile, "---\n");

  /* Print the lines that the second file has.  */
  if (changes & NEW)
    for (i = first1; i <= last1; i++)
      FUNC3 (">", &files[1].linbuf[i]);
}