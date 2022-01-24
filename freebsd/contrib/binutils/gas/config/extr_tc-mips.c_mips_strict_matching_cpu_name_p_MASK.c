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
typedef  int bfd_boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (const char *canonical, const char *given)
{
  while (*given != 0 && FUNC0 (*given) == FUNC0 (*canonical))
    given++, canonical++;

  return ((*given == 0 && *canonical == 0)
	  || (FUNC2 (canonical, "000") == 0 && FUNC1 (given, "k") == 0));
}