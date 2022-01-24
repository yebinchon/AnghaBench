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
struct data {int len; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

struct data FUNC1(struct data d, int xlen)
{
	struct data nd;
	int newsize;

	if (xlen == 0)
		return d;

	nd = d;

	newsize = xlen;

	while ((d.len + xlen) > newsize)
		newsize *= 2;

	nd.val = FUNC0(d.val, newsize);

	return nd;
}