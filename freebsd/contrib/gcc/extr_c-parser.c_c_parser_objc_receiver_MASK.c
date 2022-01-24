#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ id_kind; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ CPP_NAME ; 
 scalar_t__ C_ID_CLASSNAME ; 
 scalar_t__ C_ID_TYPENAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC4 (c_parser *parser)
{
  if (FUNC2 (parser)->type == CPP_NAME
      && (FUNC2 (parser)->id_kind == C_ID_TYPENAME
	  || FUNC2 (parser)->id_kind == C_ID_CLASSNAME))
    {
      tree id = FUNC2 (parser)->value;
      FUNC0 (parser);
      return FUNC3 (id);
    }
  return FUNC1 (parser).value;
}