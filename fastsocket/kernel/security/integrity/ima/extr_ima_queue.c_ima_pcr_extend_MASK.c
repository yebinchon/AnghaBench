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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IMA_MEASURE_PCR_IDX ; 
 int /*<<< orphan*/  TPM_ANY_NUM ; 
 int /*<<< orphan*/  ima_used_chip ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(const u8 *hash)
{
	int result = 0;

	if (!ima_used_chip)
		return result;

	result = FUNC1(TPM_ANY_NUM, CONFIG_IMA_MEASURE_PCR_IDX, hash);
	if (result != 0)
		FUNC0("IMA: Error Communicating to TPM chip\n");
	return result;
}