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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;
struct TYPE_2__ {int /*<<< orphan*/  padding; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pp_none ; 

__attribute__((used)) static inline void
FUNC4 (cxx_pretty_printer *pp, int c)
{
  const char *p = FUNC3 (pp);

  if (p != NULL && *p == c)
    FUNC2 (pp);
  FUNC1 (pp, c);
  FUNC0 (pp)->padding = pp_none;
}