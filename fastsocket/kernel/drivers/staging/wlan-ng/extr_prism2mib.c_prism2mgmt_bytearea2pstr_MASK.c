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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {int /*<<< orphan*/  data; scalar_t__ len; } ;
typedef  TYPE_1__ p80211pstrd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int) ; 

void FUNC1(u8 *bytearea, p80211pstrd_t *pstr, int len)
{
	pstr->len = (u8) len;
	FUNC0(pstr->data, bytearea, len);
}