#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct c_declspecs {int /*<<< orphan*/  type_seen_p; int /*<<< orphan*/  declspecs_seen_p; } ;
struct c_declarator {int dummy; } ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  C_DTR_BLOCK ; 
 struct c_declspecs* FUNC0 () ; 
 struct c_declarator* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct c_declspecs*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct c_declspecs*) ; 
 int /*<<< orphan*/ * FUNC5 (struct c_declspecs*,struct c_declarator*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static tree
FUNC7 (c_parser* parser)
{
  struct c_declspecs *specs = FUNC0 ();
  struct c_declarator *declarator;
  bool dummy = false;

  FUNC2 (parser, specs, false, true, true);
  if (!specs->declspecs_seen_p)
    {
      FUNC3 (parser, "expected specifier-qualifier-list");
      return NULL;
    }
  FUNC6 ();
  FUNC4 (specs);
  declarator = FUNC1 (parser, specs->type_seen_p,
				    C_DTR_BLOCK, &dummy);
  if (declarator == NULL)
    return NULL;

  return FUNC5 (specs, declarator);
}