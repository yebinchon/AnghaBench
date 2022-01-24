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
struct circ_buf {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIRCABLE_BUF_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct circ_buf *cb)
{
	return FUNC0(cb->head, cb->tail, AIRCABLE_BUF_SIZE);
}