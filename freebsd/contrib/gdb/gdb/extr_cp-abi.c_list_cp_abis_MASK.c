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
struct cleanup {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  doc; int /*<<< orphan*/  shortname; } ;

/* Variables and functions */
 TYPE_1__** cp_abis ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 struct cleanup* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int num_cp_abis ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 

__attribute__((used)) static void
FUNC5 (int from_tty)
{
  struct cleanup *cleanup_chain;
  int i;
  FUNC4 (uiout, "The available C++ ABIs are:\n");

  cleanup_chain = FUNC1 (uiout, "cp-abi-list");
  for (i = 0; i < num_cp_abis; i++)
    {
      char pad[14];
      int padcount;

      FUNC4 (uiout, "  ");
      FUNC3 (uiout, "cp-abi", cp_abis[i]->shortname);

      padcount = 16 - 2 - FUNC2 (cp_abis[i]->shortname);
      pad[padcount] = 0;
      while (padcount > 0)
	pad[--padcount] = ' ';
      FUNC4 (uiout, pad);

      FUNC3 (uiout, "doc", cp_abis[i]->doc);
      FUNC4 (uiout, "\n");
    }
  FUNC0 (cleanup_chain);
}