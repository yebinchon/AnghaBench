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
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CPP_COLON ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  RID_CASE ; 
 int /*<<< orphan*/  RID_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (c_parser *parser)
{
  while (FUNC2 (parser, RID_CASE)
	 || FUNC2 (parser, RID_DEFAULT)
	 || (FUNC1 (parser, CPP_NAME)
	     && FUNC3 (parser)->type == CPP_COLON))
    FUNC0 (parser);
  FUNC4 (parser);
}