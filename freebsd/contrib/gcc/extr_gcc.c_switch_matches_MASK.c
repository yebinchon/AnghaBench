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
struct TYPE_2__ {char* part1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int n_switches ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 TYPE_1__* switches ; 

__attribute__((used)) static bool
FUNC2 (const char *atom, const char *end_atom, int starred)
{
  int i;
  int len = end_atom - atom;
  int plen = starred ? len : -1;

  for (i = 0; i < n_switches; i++)
    if (!FUNC1 (switches[i].part1, atom, len)
	&& (starred || switches[i].part1[len] == '\0')
	&& FUNC0 (i, plen))
      return true;

  return false;
}