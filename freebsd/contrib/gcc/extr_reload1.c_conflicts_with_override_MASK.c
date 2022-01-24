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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int n_reloads ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* reload_override_in ; 

__attribute__((used)) static int
FUNC1 (rtx x)
{
  int i;
  for (i = 0; i < n_reloads; i++)
    if (reload_override_in[i]
	&& FUNC0 (x, reload_override_in[i]))
      return 1;
  return 0;
}