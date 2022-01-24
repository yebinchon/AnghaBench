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
typedef  int uint64_t ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_FAU_BITS_INEVAL ; 
 int /*<<< orphan*/  CVMX_FAU_BITS_REGISTER ; 
 int /*<<< orphan*/  CVMX_FAU_BITS_TAGWAIT ; 
 int /*<<< orphan*/  CVMX_FAU_LOAD_IO_ADDRESS ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline uint64_t FUNC2(uint64_t tagwait, uint64_t reg,
						 int64_t value)
{
	return FUNC0(CVMX_FAU_LOAD_IO_ADDRESS) |
	       FUNC1(CVMX_FAU_BITS_INEVAL, value) |
	       FUNC1(CVMX_FAU_BITS_TAGWAIT, tagwait) |
	       FUNC1(CVMX_FAU_BITS_REGISTER, reg);
}