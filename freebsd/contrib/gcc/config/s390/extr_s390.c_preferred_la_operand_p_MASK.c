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
struct s390_address {scalar_t__ indx; scalar_t__ base; scalar_t__ pointer; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct s390_address*) ; 

bool
FUNC7 (rtx op1, rtx op2)
{
  struct s390_address addr;

  if (op2 != const0_rtx)
    op1 = FUNC5 (Pmode, op1, op2);

  if (!FUNC6 (op1, &addr))
    return false;
  if (addr.base && !FUNC1 (FUNC0 (addr.base)))
    return false;
  if (addr.indx && !FUNC2 (FUNC0 (addr.indx)))
    return false;

  if (!TARGET_64BIT && !addr.pointer)
    return false;

  if (addr.pointer)
    return true;

  if ((addr.base && FUNC3 (addr.base) && FUNC4 (addr.base))
      || (addr.indx && FUNC3 (addr.indx) && FUNC4 (addr.indx)))
    return true;

  return false;
}