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
typedef  int /*<<< orphan*/  u64 ;
struct machine {int dummy; } ;
struct dso {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dso*,struct machine*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

ssize_t FUNC2(struct dso *dso, struct machine *machine,
			      u64 offset, u8 *data, ssize_t size)
{
	ssize_t r = 0;
	u8 *p = data;

	do {
		ssize_t ret;

		ret = FUNC1(dso, machine, offset, p, size);
		if (ret < 0)
			return ret;

		/* Reached EOF, return what we have. */
		if (!ret)
			break;

		FUNC0(ret > size);

		r      += ret;
		p      += ret;
		offset += ret;
		size   -= ret;

	} while (size);

	return r;
}