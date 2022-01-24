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
struct edge_buf {unsigned int buf_size; int /*<<< orphan*/ * buf_buf; int /*<<< orphan*/ * buf_put; int /*<<< orphan*/ * buf_get; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct edge_buf*) ; 
 void* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct edge_buf *FUNC2(unsigned int size)
{
	struct edge_buf *eb;


	if (size == 0)
		return NULL;

	eb = FUNC1(sizeof(struct edge_buf), GFP_KERNEL);
	if (eb == NULL)
		return NULL;

	eb->buf_buf = FUNC1(size, GFP_KERNEL);
	if (eb->buf_buf == NULL) {
		FUNC0(eb);
		return NULL;
	}

	eb->buf_size = size;
	eb->buf_get = eb->buf_put = eb->buf_buf;

	return eb;
}