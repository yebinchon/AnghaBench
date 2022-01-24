#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_4__ {size_t what; int /*<<< orphan*/  where; } ;
struct TYPE_3__ {scalar_t__ in; } ;

/* Variables and functions */
 int MAX_RELOADS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int n_reloads ; 
 int n_replacements ; 
 TYPE_2__* replacements ; 
 TYPE_1__* rld ; 

int
FUNC3 (rtx in_rtx)
{
  int i, j;
  char reload_flags[MAX_RELOADS];
  int something_changed = 0;

  FUNC2 (reload_flags, 0, sizeof reload_flags);
  for (i = 0, j = 0; i < n_replacements; i++)
    {
      if (FUNC1 (replacements[i].where, in_rtx))
	reload_flags[replacements[i].what] |= 1;
      else
	{
	  replacements[j++] = replacements[i];
	  reload_flags[replacements[i].what] |= 2;
	}
    }
  /* Note that the following store must be done before the recursive calls.  */
  n_replacements = j;

  for (i = n_reloads - 1; i >= 0; i--)
    {
      if (reload_flags[i] == 1)
	{
	  FUNC0 (i);
	  FUNC3 (rld[i].in);
	  rld[i].in = 0;
	  something_changed = 1;
	}
    }
  return something_changed;
}