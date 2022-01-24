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
struct TYPE_2__ {scalar_t__ type; int keyword; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COLON ; 
 scalar_t__ CPP_KEYWORD ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  RID_GETTER 131 
#define  RID_NONATOMIC 130 
#define  RID_READONLY 129 
#define  RID_SETTER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (c_parser *parser)
{
  tree id;
  if (FUNC4 (parser)->type != CPP_KEYWORD)
    {
      FUNC1 (parser, "expected a property attribute");
      FUNC0 (parser);
      return;
    }
  switch (FUNC4 (parser)->keyword)
    {
    case RID_READONLY:
      FUNC0 (parser);
      FUNC5 (1, NULL_TREE);
      break;
    case RID_GETTER:
      FUNC0 (parser);
      id = FUNC3 (parser);
      if (id)
	FUNC5 (2, id);
      break;
    case RID_SETTER:
      FUNC0 (parser);
      id = FUNC3 (parser);
      if (id)
	FUNC5 (3, id);
      /* Consume the ':' which must always follow the setter name. */
      if (FUNC2 (parser, CPP_COLON))
	FUNC0 (parser);
      break;
   /* APPLE LOCAL begin radar 4947014 - objc atomic property */
    case RID_NONATOMIC:
      FUNC0 (parser);
      FUNC5 (13, NULL_TREE);
      break;
    /* APPLE LOCAL end radar 4947014 - objc atomic property */
    default:
      FUNC1 (parser, "expected a property attribute");
      FUNC0 (parser);
    }
}