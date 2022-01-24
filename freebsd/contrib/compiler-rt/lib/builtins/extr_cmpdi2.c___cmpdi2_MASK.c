#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int si_int ;
struct TYPE_3__ {scalar_t__ high; scalar_t__ low; } ;
struct TYPE_4__ {TYPE_1__ s; void* all; } ;
typedef  TYPE_2__ dwords ;
typedef  void* di_int ;

/* Variables and functions */

si_int FUNC0(di_int a, di_int b) {
  dwords x;
  x.all = a;
  dwords y;
  y.all = b;
  if (x.s.high < y.s.high)
    return 0;
  if (x.s.high > y.s.high)
    return 2;
  if (x.s.low < y.s.low)
    return 0;
  if (x.s.low > y.s.low)
    return 2;
  return 1;
}