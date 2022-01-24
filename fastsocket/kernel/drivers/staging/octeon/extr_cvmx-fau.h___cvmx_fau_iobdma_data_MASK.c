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
typedef  int cvmx_fau_op_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_FAU_BITS_INEVAL ; 
 int /*<<< orphan*/  CVMX_FAU_BITS_LEN ; 
 int /*<<< orphan*/  CVMX_FAU_BITS_REGISTER ; 
 int /*<<< orphan*/  CVMX_FAU_BITS_SCRADDR ; 
 int /*<<< orphan*/  CVMX_FAU_BITS_SIZE ; 
 int /*<<< orphan*/  CVMX_FAU_BITS_TAGWAIT ; 
 int CVMX_FAU_LOAD_IO_ADDRESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline uint64_t FUNC1(uint64_t scraddr, int64_t value,
					      uint64_t tagwait,
					      cvmx_fau_op_size_t size,
					      uint64_t reg)
{
	return CVMX_FAU_LOAD_IO_ADDRESS |
	       FUNC0(CVMX_FAU_BITS_SCRADDR, scraddr >> 3) |
	       FUNC0(CVMX_FAU_BITS_LEN, 1) |
	       FUNC0(CVMX_FAU_BITS_INEVAL, value) |
	       FUNC0(CVMX_FAU_BITS_TAGWAIT, tagwait) |
	       FUNC0(CVMX_FAU_BITS_SIZE, size) |
	       FUNC0(CVMX_FAU_BITS_REGISTER, reg);
}