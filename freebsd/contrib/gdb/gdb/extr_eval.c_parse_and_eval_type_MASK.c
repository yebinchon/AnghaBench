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
struct type {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
struct TYPE_2__ {scalar_t__ opcode; struct type* type; } ;

/* Variables and functions */
 scalar_t__ UNOP_CAST ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct expression* FUNC3 (char*) ; 

struct type *
FUNC4 (char *p, int length)
{
  char *tmp = (char *) FUNC0 (length + 4);
  struct expression *expr;
  tmp[0] = '(';
  FUNC2 (tmp + 1, p, length);
  tmp[length + 1] = ')';
  tmp[length + 2] = '0';
  tmp[length + 3] = '\0';
  expr = FUNC3 (tmp);
  if (expr->elts[0].opcode != UNOP_CAST)
    FUNC1 ("Internal error in eval_type.");
  return expr->elts[1].type;
}