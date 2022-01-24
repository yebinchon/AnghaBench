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
struct TYPE_3__ {int low; int high; } ;
struct TYPE_4__ {void* all; TYPE_1__ s; } ;
typedef  TYPE_2__ dwords ;
typedef  void* di_int ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 

di_int FUNC1(di_int a, di_int b) {
  dwords x;
  x.all = a;
  dwords y;
  y.all = b;
  dwords r;
  r.all = FUNC0(x.s.low, y.s.low);
  r.s.high += x.s.high * y.s.low + x.s.low * y.s.high;
  return r.all;
}