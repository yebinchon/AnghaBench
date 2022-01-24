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
struct z_candidate {int num_convs; int viable; int /*<<< orphan*/  fn; TYPE_1__** convs; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC3 (const char *msgstr, struct z_candidate *candidate)
{
  if (FUNC0 (candidate->fn) == IDENTIFIER_NODE)
    {
      if (candidate->num_convs == 3)
	FUNC2 ("%s %D(%T, %T, %T) <built-in>", msgstr, candidate->fn,
		candidate->convs[0]->type,
		candidate->convs[1]->type,
		candidate->convs[2]->type);
      else if (candidate->num_convs == 2)
	FUNC2 ("%s %D(%T, %T) <built-in>", msgstr, candidate->fn,
		candidate->convs[0]->type,
		candidate->convs[1]->type);
      else
	FUNC2 ("%s %D(%T) <built-in>", msgstr, candidate->fn,
		candidate->convs[0]->type);
    }
  else if (FUNC1 (candidate->fn))
    FUNC2 ("%s %T <conversion>", msgstr, candidate->fn);
  else if (candidate->viable == -1)
    FUNC2 ("%s %+#D <near match>", msgstr, candidate->fn);
  else
    FUNC2 ("%s %+#D", msgstr, candidate->fn);
}