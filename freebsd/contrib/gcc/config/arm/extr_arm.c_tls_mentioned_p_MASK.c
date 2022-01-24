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
#define  CONST 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  UNSPEC 128 
 int /*<<< orphan*/  UNSPEC_TLS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int
FUNC3 (rtx x)
{
  switch (FUNC0 (x))
    {
    case CONST:
      return FUNC3 (FUNC1 (x, 0));

    case UNSPEC:
      if (FUNC2 (x, 1) == UNSPEC_TLS)
	return 1;

    default:
      return 0;
    }
}