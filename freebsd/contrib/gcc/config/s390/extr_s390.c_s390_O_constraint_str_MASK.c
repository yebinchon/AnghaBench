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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  TARGET_EXTIMM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

int
FUNC4 (const char c, HOST_WIDE_INT value)
{
  if (!TARGET_EXTIMM)
    return 0;

  switch (c)
    {
    case 's':
      return FUNC3 (value, SImode) == value;

    case 'p':
      return value == 0
	|| FUNC2 (FUNC0 (value), DImode, SImode, 0) == 1;

    case 'n':
      return value == -1
	|| FUNC2 (FUNC0 (value), DImode, SImode, -1) == 1;

    default:
      FUNC1 ();
    }
}