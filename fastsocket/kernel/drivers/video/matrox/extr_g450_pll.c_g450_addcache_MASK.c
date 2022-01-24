#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct matrox_pll_cache {scalar_t__ valid; TYPE_1__* data; } ;
struct TYPE_4__ {unsigned int mnp_key; unsigned int mnp_value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 unsigned int G450_MNP_FREQBITS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC2(struct matrox_pll_cache* ci, unsigned int mnp_key, unsigned int mnp_value) {
	if (++ci->valid > FUNC0(ci->data)) {
		ci->valid = FUNC0(ci->data);
	}
	FUNC1(ci->data + 1, ci->data, (ci->valid - 1) * sizeof(*ci->data));
	ci->data[0].mnp_key = mnp_key & G450_MNP_FREQBITS;
	ci->data[0].mnp_value = mnp_value;
}