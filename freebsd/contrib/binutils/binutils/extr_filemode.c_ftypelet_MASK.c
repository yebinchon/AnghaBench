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

/* Variables and functions */
 unsigned long S_IFMPB ; 
 unsigned long S_IFMPC ; 
 unsigned long S_IFMT ; 
 unsigned long S_IFNWK ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 

__attribute__((used)) static char
FUNC6 (unsigned long bits)
{
  if (FUNC2 (bits))
    return 'd';
  if (FUNC4 (bits))
    return 'l';
  if (FUNC0 (bits))
    return 'b';
  if (FUNC1 (bits))
    return 'c';
  if (FUNC5 (bits))
    return 's';
  if (FUNC3 (bits))
    return 'p';

#ifdef S_IFMT
#ifdef S_IFMPC
  if ((bits & S_IFMT) == S_IFMPC
      || (bits & S_IFMT) == S_IFMPB)
    return 'm';
#endif
#ifdef S_IFNWK
  if ((bits & S_IFMT) == S_IFNWK)
    return 'n';
#endif
#endif

  return '-';
}