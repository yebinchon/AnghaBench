#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  pretty_printer ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 scalar_t__ LABEL_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC7 (pretty_printer *buffer, basic_block bb)
{
  tree stmt;

  stmt = FUNC3 (bb);

  FUNC6 (buffer, "goto <bb ");
  FUNC4 (buffer, bb->index);
  FUNC6 (buffer, ">");
  if (stmt && FUNC1 (stmt) == LABEL_EXPR)
    {
      FUNC6 (buffer, " (");
      FUNC2 (buffer, FUNC0 (stmt), 0, 0, false);
      FUNC6 (buffer, ")");
    }
  FUNC5 (buffer);
}