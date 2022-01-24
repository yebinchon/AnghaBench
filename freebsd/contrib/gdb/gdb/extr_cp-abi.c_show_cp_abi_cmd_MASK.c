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
struct TYPE_2__ {int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; } ;

/* Variables and functions */
 TYPE_1__ current_cp_abi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 

__attribute__((used)) static void
FUNC2 (char *args, int from_tty)
{
  FUNC1 (uiout, "The currently selected C++ ABI is \"");

  FUNC0 (uiout, "cp-abi", current_cp_abi.shortname);
  FUNC1 (uiout, "\" (");
  FUNC0 (uiout, "longname", current_cp_abi.longname);
  FUNC1 (uiout, ").\n");
}