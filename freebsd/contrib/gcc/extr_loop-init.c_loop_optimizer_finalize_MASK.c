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
struct loops {unsigned int num; scalar_t__* parray; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loops*) ; 
 int /*<<< orphan*/  FUNC1 (struct loops*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4 (struct loops *loops)
{
  unsigned i;

  if (!loops)
    return;

  for (i = 1; i < loops->num; i++)
    if (loops->parray[i])
      FUNC2 (loops->parray[i]);

  /* Clean up.  */
  FUNC0 (loops);
  FUNC1 (loops);

  /* Checking.  */
#ifdef ENABLE_CHECKING
  verify_flow_info ();
#endif
}