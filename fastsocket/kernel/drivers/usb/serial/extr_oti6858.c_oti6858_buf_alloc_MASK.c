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
struct oti6858_buf {unsigned int buf_size; int /*<<< orphan*/ * buf_buf; int /*<<< orphan*/ * buf_put; int /*<<< orphan*/ * buf_get; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct oti6858_buf*) ; 
 void* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct oti6858_buf *FUNC2(unsigned int size)
{
	struct oti6858_buf *pb;

	if (size == 0)
		return NULL;

	pb = FUNC1(sizeof(struct oti6858_buf), GFP_KERNEL);
	if (pb == NULL)
		return NULL;

	pb->buf_buf = FUNC1(size, GFP_KERNEL);
	if (pb->buf_buf == NULL) {
		FUNC0(pb);
		return NULL;
	}

	pb->buf_size = size;
	pb->buf_get = pb->buf_put = pb->buf_buf;

	return pb;
}