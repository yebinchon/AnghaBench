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
struct buffer_head {scalar_t__ b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct buffer_head *to_bh,
					 int to_head,
					 struct buffer_head *from_bh,
					 int from_head)
{
	FUNC0(from_head < to_head);
	FUNC1(to_bh->b_data + to_head, from_bh->b_data + from_head,
	       from_bh->b_size - from_head);
	FUNC2(to_bh->b_data + to_bh->b_size + to_head - from_head,
	       0, from_head - to_head);
}