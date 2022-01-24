#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rtl_bb_info {int dummy; } ;
typedef  TYPE_2__* basic_block ;
struct TYPE_4__ {scalar_t__ rtl; } ;
struct TYPE_5__ {TYPE_1__ il; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

void
FUNC2 (basic_block bb)
{
  FUNC0 (!bb->il.rtl);
  bb->il.rtl = FUNC1 (sizeof (struct rtl_bb_info));
}