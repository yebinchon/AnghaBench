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
struct ubifs_info {int leb_size; int /*<<< orphan*/  min_io_size; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(const struct ubifs_info *c, void *buf, int offs)
{
	int empty_offs, check_len;
	uint8_t *p;

	/*
	 * Round up to the next @c->min_io_size boundary i.e. @offs is in the
	 * last wbuf written. After that should be empty space.
	 */
	empty_offs = FUNC0(offs + 1, c->min_io_size);
	check_len = c->leb_size - empty_offs;
	p = buf + empty_offs - offs;
	return FUNC1(p, check_len);
}