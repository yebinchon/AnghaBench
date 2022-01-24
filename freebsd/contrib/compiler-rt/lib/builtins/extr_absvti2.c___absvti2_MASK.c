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
typedef  int const ti_int ;

/* Variables and functions */
 int CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 

ti_int FUNC1(ti_int a) {
  const int N = (int)(sizeof(ti_int) * CHAR_BIT);
  if (a == ((ti_int)1 << (N - 1)))
    FUNC0();
  const ti_int s = a >> (N - 1);
  return (a ^ s) - s;
}