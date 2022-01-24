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
typedef  int /*<<< orphan*/  tree ;
struct c_declspecs {int non_sc_seen_p; int declspecs_seen_p; int const_p; int volatile_p; int restrict_p; } ;
typedef  enum rid { ____Placeholder_rid } rid ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IDENTIFIER_NODE ; 
#define  RID_CONST 130 
#define  RID_RESTRICT 129 
#define  RID_VOLATILE 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_isoc99 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

struct c_declspecs *
FUNC6 (struct c_declspecs *specs, tree qual)
{
  enum rid i;
  bool dupe = false;
  specs->non_sc_seen_p = true;
  specs->declspecs_seen_p = true;
  FUNC3 (FUNC2 (qual) == IDENTIFIER_NODE
	      && FUNC0 (qual));
  i = FUNC1 (qual);
  switch (i)
    {
    case RID_CONST:
      dupe = specs->const_p;
      specs->const_p = true;
      break;
    case RID_VOLATILE:
      dupe = specs->volatile_p;
      specs->volatile_p = true;
      break;
    case RID_RESTRICT:
      dupe = specs->restrict_p;
      specs->restrict_p = true;
      break;
    default:
      FUNC4 ();
    }
  if (dupe && pedantic && !flag_isoc99)
    FUNC5 ("duplicate %qE", qual);
  return specs;
}