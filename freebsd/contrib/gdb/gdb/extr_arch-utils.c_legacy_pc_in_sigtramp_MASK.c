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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int
FUNC5 (CORE_ADDR pc, char *name)
{
#if !defined (IN_SIGTRAMP)
  if (FUNC3 ())
    return (pc) >= FUNC2 (pc) && (pc) < FUNC1 (pc);
  else
    return name && FUNC4 ("_sigtramp", name) == 0;
#else
  return IN_SIGTRAMP (pc, name);
#endif
}