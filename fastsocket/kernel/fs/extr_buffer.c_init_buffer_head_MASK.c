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
struct buffer_head {int /*<<< orphan*/  b_assoc_buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void *data)
{
	struct buffer_head *bh = data;

	FUNC1(bh, 0, sizeof(*bh));
	FUNC0(&bh->b_assoc_buffers);
}