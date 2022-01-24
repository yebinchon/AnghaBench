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
 struct data FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  empty_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

struct data FUNC2(const char *mem, int len)
{
	struct data d;

	d = FUNC0(empty_data, len);

	d.len = len;
	FUNC1(d.val, mem, len);

	return d;
}