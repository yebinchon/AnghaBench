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
struct ui_file {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
struct TYPE_2__ {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int FUNC0 (struct expression*,struct ui_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*,...) ; 
 int FUNC2 (struct expression*,int /*<<< orphan*/ ) ; 

int
FUNC3 (struct expression *exp, struct ui_file *stream, int elt)
{
  static int indent = 0;
  int i;

  FUNC1 (stream, "\n");
  FUNC1 (stream, "\t%5d  ", elt);

  for (i = 1; i <= indent; i++)
    FUNC1 (stream, " ");
  indent += 2;

  FUNC1 (stream, "%-20s  ", FUNC2 (exp, exp->elts[elt].opcode));

  elt = FUNC0 (exp, stream, elt);

  indent -= 2;

  return elt;
}