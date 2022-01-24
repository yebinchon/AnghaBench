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
 int FUNC0 (int,int) ; 

si_int FUNC1(si_int a, si_int b, si_int *rem) {
  si_int d = FUNC0(a, b);
  *rem = a - (d * b);
  return d;
}