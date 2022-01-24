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
typedef  int rtx ;
typedef  int /*<<< orphan*/  hashval_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 scalar_t__ FUNC2 (int const) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int const) ; 

__attribute__((used)) static hashval_t
FUNC6 (const void *p)
{
  const rtx r = (rtx) p;
  rtx set, lhs;

  if (r && FUNC2 (r))
    return FUNC1 (r);

  FUNC4 (r && FUNC0 (r));
  set = FUNC5 (r);
  FUNC4 (set);
  lhs = FUNC3 (set);
  return FUNC1 (lhs);
}