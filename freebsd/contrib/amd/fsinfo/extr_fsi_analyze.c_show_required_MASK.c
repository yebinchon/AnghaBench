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
typedef  int /*<<< orphan*/  ioloc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC3(ioloc *l, int mask, char *info, char *hostname, char *strings[])
{
  int i;
  FUNC1("mask left for %s:%s is %#x", hostname, info, mask);

  for (i = 0; strings[i]; i++)
    if (FUNC0(mask, i))
      FUNC2(l, "%s:%s needs field \"%s\"", hostname, info, strings[i]);
}