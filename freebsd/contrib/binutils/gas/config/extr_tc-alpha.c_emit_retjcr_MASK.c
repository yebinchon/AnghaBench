#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ X_op; int /*<<< orphan*/  X_add_number; } ;
typedef  TYPE_1__ expressionS ;

/* Variables and functions */
 int AXP_REG_RA ; 
 int AXP_REG_ZERO ; 
 scalar_t__ O_cpregister ; 
 scalar_t__ O_pregister ; 
 scalar_t__ O_register ; 
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static void
FUNC6 (const expressionS *tok,
	     int ntok,
	     const void * vopname)
{
  const char *opname = (const char *) vopname;
  expressionS newtok[3];
  int r, tokidx = 0;

  if (tokidx < ntok && tok[tokidx].X_op == O_register)
    r = FUNC1 (tok[tokidx++].X_add_number);
  else
    r = AXP_REG_ZERO;

  FUNC4 (newtok[0], r);

  if (tokidx < ntok &&
      (tok[tokidx].X_op == O_pregister || tok[tokidx].X_op == O_cpregister))
    r = FUNC1 (tok[tokidx++].X_add_number);
  else
    r = AXP_REG_RA;

  FUNC3 (newtok[1], r);

  if (tokidx < ntok)
    newtok[2] = tok[tokidx];
  else
    FUNC2 (newtok[2], FUNC5 (opname, "ret") == 0);

  FUNC0 (opname, newtok, 3, 0);
}