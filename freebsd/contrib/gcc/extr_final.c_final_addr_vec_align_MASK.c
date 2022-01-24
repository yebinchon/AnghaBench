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
 int BIGGEST_ALIGNMENT ; 
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4 (rtx addr_vec)
{
  int align = FUNC1 (FUNC0 (FUNC2 (addr_vec)));

  if (align > BIGGEST_ALIGNMENT / BITS_PER_UNIT)
    align = BIGGEST_ALIGNMENT / BITS_PER_UNIT;
  return FUNC3 (align);

}