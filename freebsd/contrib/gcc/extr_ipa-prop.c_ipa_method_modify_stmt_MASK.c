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
struct cgraph_node {int dummy; } ;

/* Variables and functions */
#define  ASM_EXPR 129 
#define  MODIFY_EXPR 128 
 int PARM_DECL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cgraph_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgraph_node*,int,int) ; 
 int FUNC4 (struct cgraph_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct cgraph_node *mt, tree stmt)
{
  int i, j;

  switch (FUNC0 (stmt))
    {
    case MODIFY_EXPR:
      if (FUNC0 (FUNC1 (stmt, 0)) == PARM_DECL)
	{
	  i = FUNC4 (mt, FUNC1 (stmt, 0));
	  if (i >= 0)
            FUNC3 (mt, i, true);
	}
      break;
    case ASM_EXPR:
      /* Asm code could modify any of the parameters.  */
      for (j = 0; j < FUNC2 (mt); j++)
	FUNC3 (mt, j, true);
      break;
    default:
      break;
    }
}