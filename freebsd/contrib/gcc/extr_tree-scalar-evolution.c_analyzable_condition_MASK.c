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
 int COND_EXPR ; 
#define  EQ_EXPR 134 
#define  GE_EXPR 133 
#define  GT_EXPR 132 
#define  LE_EXPR 131 
#define  LT_EXPR 130 
#define  NE_EXPR 129 
#define  SSA_NAME 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2 (tree expr)
{
  tree condition;
  
  if (FUNC0 (expr) != COND_EXPR)
    return false;
  
  condition = FUNC1 (expr, 0);
  
  switch (FUNC0 (condition))
    {
    case SSA_NAME:
      return true;
      
    case LT_EXPR:
    case LE_EXPR:
    case GT_EXPR:
    case GE_EXPR:
    case EQ_EXPR:
    case NE_EXPR:
      return true;
      
    default:
      return false;
    }
  
  return false;
}