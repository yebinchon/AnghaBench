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
  lin i, f0, l0, f1, l1;

  /* Determine range of line numbers involved in each file.  */
  enum changes changes = FUNC0 (hunk, &f0, &l0, &f1, &l1);
  if (!changes)
    return;

  FUNC1 ();

  FUNC2 (outfile, "%c", change_letter[changes]);
  FUNC4 (' ', files, f0, l0);
  FUNC2 (outfile, "\n");

  /* If deletion only, print just the number range.  */

  if (changes == OLD)
    return;

  /* For insertion (with or without deletion), print the number range
     and the lines from file 2.  */

  for (i = f1; i <= l1; i++)
    FUNC3 ("", &files[1].linbuf[i]);

  FUNC2 (outfile, ".\n");
}