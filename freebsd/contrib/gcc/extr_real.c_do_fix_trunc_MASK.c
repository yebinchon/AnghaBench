#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int cl; int /*<<< orphan*/  sign; int /*<<< orphan*/  decimal; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ SIGNIFICAND_BITS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  rvc_inf 131 
#define  rvc_nan 130 
#define  rvc_normal 129 
#define  rvc_zero 128 

__attribute__((used)) static void
FUNC5 (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *a)
{
  *r = *a;

  switch (r->cl)
    {
    case rvc_zero:
    case rvc_inf:
    case rvc_nan:
      break;

    case rvc_normal:
      if (r->decimal)
	{
	  FUNC2 (r, a);
	  return;
	}
      if (FUNC0 (r) <= 0)
	FUNC4 (r, r->sign);
      else if (FUNC0 (r) < SIGNIFICAND_BITS)
	FUNC1 (r, SIGNIFICAND_BITS - FUNC0 (r));
      break;

    default:
      FUNC3 ();
    }
}