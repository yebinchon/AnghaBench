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
 scalar_t__ EEXIST ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 

int
FUNC2 (const char *zfrom, const char *zto)
{
  if (FUNC0 (zfrom, zto) < 0)
    {
      if (errno != EEXIST)
	return -1;
      if (FUNC1 (zto) < 0
	  || FUNC0 (zfrom, zto) < 0)
	return -1;
    }
  return FUNC1 (zfrom);
}