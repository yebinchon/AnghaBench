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
typedef  struct iovec {size_t iov_len; } const iovec ;
struct iov_iter {size_t count; int nr_segs; size_t iov_offset; struct iovec const* iov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (size_t,size_t) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct iov_iter *i, size_t bytes)
{
	FUNC0(i->count < bytes);

	if (FUNC1(i->nr_segs == 1)) {
		i->iov_offset += bytes;
		i->count -= bytes;
	} else {
		const struct iovec *iov = i->iov;
		size_t base = i->iov_offset;

		/*
		 * The !iov->iov_len check ensures we skip over unlikely
		 * zero-length segments (without overruning the iovec).
		 */
		while (bytes || FUNC3(i->count && !iov->iov_len)) {
			int copy;

			copy = FUNC2(bytes, iov->iov_len - base);
			FUNC0(!i->count || i->count < copy);
			i->count -= copy;
			bytes -= copy;
			base += copy;
			if (iov->iov_len == base) {
				iov++;
				base = 0;
			}
		}
		i->iov = iov;
		i->iov_offset = base;
	}
}