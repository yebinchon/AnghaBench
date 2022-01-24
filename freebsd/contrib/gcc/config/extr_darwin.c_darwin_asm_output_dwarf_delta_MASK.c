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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int darwin_dwarf_label_counter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

void
FUNC2 (FILE *file, int size,
			       const char *lab1, const char *lab2)
{
  int islocaldiff = (lab1[0] == '*' && lab1[1] == 'L'
		     && lab2[0] == '*' && lab2[1] == 'L');
  const char *directive = (size == 8 ? ".quad" : ".long");

  if (islocaldiff)
    FUNC1 (file, "\t.set L$set$%d,", darwin_dwarf_label_counter);
  else
    FUNC1 (file, "\t%s\t", directive);
  FUNC0 (file, lab1);
  FUNC1 (file, "-");
  FUNC0 (file, lab2);
  if (islocaldiff)
    FUNC1 (file, "\n\t%s L$set$%d", directive, darwin_dwarf_label_counter++);
}