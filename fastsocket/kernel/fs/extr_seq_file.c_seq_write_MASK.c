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
struct seq_file {scalar_t__ count; scalar_t__ size; scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void const*,size_t) ; 

int FUNC1(struct seq_file *seq, const void *data, size_t len)
{
	if (seq->count + len < seq->size) {
		FUNC0(seq->buf + seq->count, data, len);
		seq->count += len;
		return 0;
	}
	seq->count = seq->size;
	return -1;
}