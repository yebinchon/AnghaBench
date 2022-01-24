#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int low; int high; } ;
typedef  TYPE_1__ double_int ;

/* Variables and functions */
 TYPE_1__ FUNC0 (unsigned int) ; 

double_int
FUNC1 (double_int cst, unsigned prec)
{
  double_int mask = FUNC0 (prec);
  double_int r;

  r.low = cst.low & mask.low;
  r.high = cst.high & mask.high;

  return r;
}