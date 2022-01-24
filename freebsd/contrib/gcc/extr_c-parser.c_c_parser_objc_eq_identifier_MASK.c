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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_EQ ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC4 (c_parser *parser)
{
  tree id;
  if (FUNC2 (parser, CPP_EQ))
    {
      FUNC1 (parser, "expected %<=%>");
      return NULL_TREE;
    }
  /* Consume '=' */
  FUNC0 (parser);
  if (FUNC2 (parser, CPP_NAME))
    {
      FUNC1 (parser, "expected identifier");
      return NULL_TREE;
    }
  id = FUNC3 (parser)->value;
  FUNC0 (parser);
  return id;
}