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
typedef  int /*<<< orphan*/  lithium_t ;
struct TYPE_3__ {int lo_bit; int nbits; int /*<<< orphan*/  reg; } ;
typedef  TYPE_1__ ad1843_bitfield_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(lithium_t *lith, const ad1843_bitfield_t *field)
{
	int w = FUNC1(lith, field->reg);
	int val = w >> field->lo_bit & ((1 << field->nbits) - 1);

	FUNC0("ad1843_read_bits(lith=0x%p, field->{%d %d %d}) returns 0x%x\n",
	      lith, field->reg, field->lo_bit, field->nbits, val);

	return val;
}