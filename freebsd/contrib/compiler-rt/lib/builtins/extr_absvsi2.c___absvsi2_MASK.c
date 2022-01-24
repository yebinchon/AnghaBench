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
typedef  int si_int ;

/* Variables and functions */
 int CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 

si_int FUNC1(si_int a) {
  const int N = (int)(sizeof(si_int) * CHAR_BIT);
  if (a == (1 << (N - 1)))
    FUNC0();
  const si_int t = a >> (N - 1);
  return (a ^ t) - t;
}