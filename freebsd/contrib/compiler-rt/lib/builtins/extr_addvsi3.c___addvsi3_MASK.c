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
typedef  scalar_t__ su_int ;
typedef  scalar_t__ si_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

si_int FUNC1(si_int a, si_int b) {
  si_int s = (su_int)a + (su_int)b;
  if (b >= 0) {
    if (s < a)
      FUNC0();
  } else {
    if (s >= a)
      FUNC0();
  }
  return s;
}