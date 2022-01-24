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
struct policy_file {size_t len; size_t data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t,size_t) ; 

__attribute__((used)) static inline int FUNC1(void *buf, struct policy_file *fp, size_t bytes)
{
	if (bytes > fp->len)
		return -EINVAL;

	FUNC0(buf, fp->data, bytes);
	fp->data += bytes;
	fp->len -= bytes;
	return 0;
}