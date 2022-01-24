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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (char *bnum_exp, int from_tty)
{
  int bnum = -1;

  if (bnum_exp)
    bnum = FUNC1 (bnum_exp);

  FUNC0 (bnum, 1);
}