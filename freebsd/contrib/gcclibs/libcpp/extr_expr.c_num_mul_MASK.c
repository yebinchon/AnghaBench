#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_14__ {int unsignedp; int overflow; scalar_t__ high; scalar_t__ low; } ;
typedef  TYPE_1__ cpp_num ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC2 (TYPE_1__,size_t) ; 
 TYPE_1__ FUNC3 (scalar_t__,scalar_t__) ; 
 int FUNC4 (TYPE_1__,size_t) ; 
 TYPE_1__ FUNC5 (TYPE_1__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__) ; 
 size_t precision ; 

__attribute__((used)) static cpp_num
FUNC7 (cpp_reader *pfile, cpp_num lhs, cpp_num rhs)
{
  cpp_num result, temp;
  bool unsignedp = lhs.unsignedp || rhs.unsignedp;
  bool overflow, negate = false;
  size_t precision = FUNC0 (pfile, precision);

  /* Prepare for unsigned multiplication.  */
  if (!unsignedp)
    {
      if (!FUNC4 (lhs, precision))
	negate = !negate, lhs = FUNC2 (lhs, precision);
      if (!FUNC4 (rhs, precision))
	negate = !negate, rhs = FUNC2 (rhs, precision);
    }

  overflow = lhs.high && rhs.high;
  result = FUNC3 (lhs.low, rhs.low);

  temp = FUNC3 (lhs.high, rhs.low);
  result.high += temp.low;
  if (temp.high)
    overflow = true;

  temp = FUNC3 (lhs.low, rhs.high);
  result.high += temp.low;
  if (temp.high)
    overflow = true;

  temp.low = result.low, temp.high = result.high;
  result = FUNC5 (result, precision);
  if (!FUNC1 (result, temp))
    overflow = true;

  if (negate)
    result = FUNC2 (result, precision);

  if (unsignedp)
    result.overflow = false;
  else
    result.overflow = overflow || (FUNC4 (result, precision) ^ !negate
				   && !FUNC6 (result));
  result.unsignedp = unsignedp;

  return result;
}