#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int low; scalar_t__ high; } ;
typedef  TYPE_1__ double_int ;

/* Variables and functions */

__attribute__((used)) static inline bool
FUNC0 (double_int cst)
{
  return cst.low == 1 && cst.high == 0;
}