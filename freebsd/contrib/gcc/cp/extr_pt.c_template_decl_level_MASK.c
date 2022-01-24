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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PARM_DECL 130 
#define  TEMPLATE_DECL 129 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 128 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6 (tree decl)
{
  switch (FUNC3 (decl))
    {
    case TYPE_DECL:
    case TEMPLATE_DECL:
      return FUNC2 (FUNC4 (decl));

    case PARM_DECL:
      return FUNC1 (FUNC0 (decl));

    default:
      FUNC5 ();
    }
  return 0;
}