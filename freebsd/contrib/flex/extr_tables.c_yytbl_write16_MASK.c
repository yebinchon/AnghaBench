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
struct yytbl_writer {size_t total_written; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  flex_uint16_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2 (struct yytbl_writer *wr, flex_uint16_t v)
{
	flex_uint16_t vnet;
	size_t  bytes, rv;

	vnet = FUNC1 (v);
	bytes = sizeof (flex_uint16_t);
	rv = FUNC0 (&vnet, bytes, 1, wr->out);
	if (rv != 1)
		return -1;
	wr->total_written += bytes;
	return bytes;
}