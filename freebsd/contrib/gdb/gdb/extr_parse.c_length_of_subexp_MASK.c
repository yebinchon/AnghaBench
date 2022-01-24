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
struct expression {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct expression*,int,int*,int*) ; 

int
FUNC1 (struct expression *expr, int endpos)
{
  int oplen, args, i;

  FUNC0 (expr, endpos, &oplen, &args);

  while (args > 0)
    {
      oplen += FUNC1 (expr, endpos - oplen);
      args--;
    }

  return oplen;
}