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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int DW_DLE_MEMORY ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC4(uint8_t **block, uint64_t *size, uint64_t *offsetp,
    uint64_t value, int bytes_to_write, Dwarf_Error *error)
{

	FUNC2(*size > 0);

	while (*offsetp + bytes_to_write > *size) {
		*size *= 2;
		*block = FUNC3(*block, (size_t) *size);
		if (*block == NULL) {
			FUNC0(NULL, error, DW_DLE_MEMORY);
			return (DW_DLE_MEMORY);
		}
	}

	FUNC1(*block, offsetp, value, bytes_to_write);

	return (DW_DLE_NONE);
}