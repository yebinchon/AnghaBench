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
typedef  int uint_t ;
typedef  void const uchar_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_3__ {scalar_t__ dbu_ptr; int dbu_buf; scalar_t__ dbu_err; int dbu_len; int /*<<< orphan*/  dbu_resizes; } ;
typedef  TYPE_1__ dt_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 void const* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (size_t,size_t) ; 

void
FUNC6(dtrace_hdl_t *dtp, dt_buf_t *bp,
    const void *buf, size_t len, size_t align)
{
	size_t off = (size_t)(bp->dbu_ptr - bp->dbu_buf);
	size_t adj = FUNC5(off, align) - off;

	if (bp->dbu_err != 0) {
		(void) FUNC2(dtp, bp->dbu_err);
		return; /* write silently fails */
	}

	if (bp->dbu_ptr + adj + len > bp->dbu_buf + bp->dbu_len) {
		size_t new_len = bp->dbu_len * 2;
		uchar_t *new_buf;
		uint_t r = 1;

		while (bp->dbu_ptr + adj + len > bp->dbu_buf + new_len) {
			new_len *= 2;
			r++;
		}

		if ((new_buf = FUNC3(dtp, new_len)) == NULL) {
			bp->dbu_err = FUNC4(dtp);
			return;
		}

		FUNC0(bp->dbu_buf, new_buf, off);
		FUNC1(dtp, bp->dbu_buf);

		bp->dbu_buf = new_buf;
		bp->dbu_ptr = new_buf + off;
		bp->dbu_len = new_len;
		bp->dbu_resizes += r;
	}

	bp->dbu_ptr += adj;
	FUNC0(buf, bp->dbu_ptr, len);
	bp->dbu_ptr += len;
}