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
struct regcache {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct regcache* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct regcache*) ; 

char *
FUNC2 (CORE_ADDR pc, CORE_ADDR fp)
{
  struct regcache *regcache = FUNC0 (pc, fp);
  if (regcache == NULL)
    return NULL;
  return FUNC1 (regcache);
}