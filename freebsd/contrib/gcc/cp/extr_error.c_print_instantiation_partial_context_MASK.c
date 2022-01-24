#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  location_t ;
struct TYPE_5__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ expanded_location ;
struct TYPE_6__ {int /*<<< orphan*/  printer; } ;
typedef  TYPE_2__ diagnostic_context ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int TFF_DECL_SPECIFIERS ; 
 int TFF_RETURN_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC7 (diagnostic_context *context,
				     tree t, location_t loc)
{
  expanded_location xloc;
  for (; ; t = FUNC2 (t))
    {
      xloc = FUNC4 (loc);
      if (t == NULL_TREE)
	break;
      FUNC6 (context->printer, "%s:%d:   instantiated from %qs\n",
		   xloc.file, xloc.line,
		   FUNC3 (FUNC0 (t),
				   TFF_DECL_SPECIFIERS | TFF_RETURN_TYPE));
      loc = FUNC1 (t);
    }
  FUNC6 (context->printer, "%s:%d:   instantiated from here",
	       xloc.file, xloc.line);
  FUNC5 (context->printer);
}