#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_8__ {int /*<<< orphan*/  bb; } ;
typedef  TYPE_1__ block_stmt_iterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (block_stmt_iterator *bsi, tree list)
{
  FUNC4 (bsi, list);
  FUNC3 (bsi, false);
  if (FUNC0 (*bsi))
    *bsi = FUNC1 (bsi->bb);
  else
    FUNC2 (bsi);
}