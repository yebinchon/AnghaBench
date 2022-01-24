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
struct kvec {size_t iov_len; size_t iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvec*,struct kvec*,int) ; 
 int FUNC1 (size_t,size_t) ; 

__attribute__((used)) static unsigned int
FUNC2(struct kvec *new, struct kvec *iov, unsigned int nr_segs,
		size_t bytes)
{
	size_t base = 0;

	while (bytes || !iov->iov_len) {
		int copy = FUNC1(bytes, iov->iov_len);

		bytes -= copy;
		base += copy;
		if (iov->iov_len == base) {
			iov++;
			nr_segs--;
			base = 0;
		}
	}
	FUNC0(new, iov, sizeof(*iov) * nr_segs);
	new->iov_base += base;
	new->iov_len -= base;
	return nr_segs;
}