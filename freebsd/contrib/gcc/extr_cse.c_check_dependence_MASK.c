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
struct check_dependence_data {int /*<<< orphan*/  addr; int /*<<< orphan*/  mode; int /*<<< orphan*/  exp; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cse_rtx_varies_p ; 

__attribute__((used)) static int
FUNC2 (rtx *x, void *data)
{
  struct check_dependence_data *d = (struct check_dependence_data *) data;
  if (*x && FUNC0 (*x))
    return FUNC1 (d->exp, d->mode, d->addr, *x,
		    		  cse_rtx_varies_p);
  else
    return 0;
}