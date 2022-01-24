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
struct hdspm {int dummy; } ;

/* Variables and functions */
 scalar_t__ HDSPM_inputEnableBase ; 
 int /*<<< orphan*/  FUNC0 (struct hdspm*,scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC1(struct hdspm * hdspm, int i, int v)
{
	FUNC0(hdspm, HDSPM_inputEnableBase + (4 * i), v);
}