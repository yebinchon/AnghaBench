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
struct ihex_record {scalar_t__ txt_offset; scalar_t__ error; scalar_t__ max_len; int /*<<< orphan*/  len; int /*<<< orphan*/  txt_length; int /*<<< orphan*/  txt_data; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct ihex_record*) ; 

__attribute__((used)) static int FUNC2(const struct firmware *fw,
		struct ihex_record *record)
{
	record->txt_data = fw->data;
	record->txt_length = fw->size;
	record->txt_offset = 0;
	record->max_len = 0;
	/* read all records, if loop ends, record->error indicates,
	 * whether ihex is valid. */
	while (FUNC1(record))
		record->max_len = FUNC0(record->len, record->max_len);
	if (record->error)
		return -EINVAL;
	record->txt_offset = 0;
	return 0;
}