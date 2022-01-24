#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ last_basic_block ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * names_to_release ; 

__attribute__((used)) static void
FUNC7 (tree name, bool insert_phi_p)
{
  tree stmt;
  basic_block bb;

  FUNC4 (names_to_release == NULL
	      || !FUNC3 (names_to_release, FUNC1 (name)));

  stmt = FUNC0 (name);
  bb = FUNC2 (stmt);
  if (bb)
    {
      FUNC4 (bb->index < last_basic_block);
      FUNC5 (bb);
      FUNC6 (name, stmt, bb, insert_phi_p);
    }
}