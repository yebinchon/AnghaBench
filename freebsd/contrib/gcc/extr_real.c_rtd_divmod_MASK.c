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
struct TYPE_14__ {unsigned long* sig; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int SIGSZ ; 
 unsigned long SIG_MSB ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC6 (REAL_VALUE_TYPE *num, REAL_VALUE_TYPE *den)
{
  unsigned long q, msb;
  int expn = FUNC0 (num), expd = FUNC0 (den);

  if (expn < expd)
    return 0;

  q = msb = 0;
  goto start;
  do
    {
      msb = num->sig[SIGSZ-1] & SIG_MSB;
      q <<= 1;
      FUNC3 (num, num);
    start:
      if (msb || FUNC2 (num, den) >= 0)
	{
	  FUNC5 (num, num, den, 0);
	  q |= 1;
	}
    }
  while (--expn >= expd);

  FUNC1 (num, expd);
  FUNC4 (num);

  return q;
}