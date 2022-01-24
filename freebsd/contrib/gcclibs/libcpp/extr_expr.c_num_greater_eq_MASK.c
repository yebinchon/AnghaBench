#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ high; scalar_t__ low; int /*<<< orphan*/  unsignedp; } ;
typedef  TYPE_1__ cpp_num ;

/* Variables and functions */
 int FUNC0 (TYPE_1__,size_t) ; 

__attribute__((used)) static bool
FUNC1 (cpp_num pa, cpp_num pb, size_t precision)
{
  bool unsignedp;

  unsignedp = pa.unsignedp || pb.unsignedp;

  if (!unsignedp)
    {
      /* Both numbers have signed type.  If they are of different
       sign, the answer is the sign of A.  */
      unsignedp = FUNC0 (pa, precision);

      if (unsignedp != FUNC0 (pb, precision))
	return unsignedp;

      /* Otherwise we can do an unsigned comparison.  */
    }

  return (pa.high > pb.high) || (pa.high == pb.high && pa.low >= pb.low);
}