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
typedef  int ti_int ;

/* Variables and functions */
 int CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 

ti_int FUNC1(ti_int a) {
  const ti_int MIN = (ti_int)1 << ((int)(sizeof(ti_int) * CHAR_BIT) - 1);
  if (a == MIN)
    FUNC0();
  return -a;
}