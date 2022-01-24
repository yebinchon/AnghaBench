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
typedef  int /*<<< orphan*/  uint32_t ;
struct inbuf {int dummy; } ;
struct data {int len; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 struct data FUNC0 (struct data,int) ; 
 struct data empty_data ; 
 int /*<<< orphan*/  FUNC1 (struct inbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inbuf*,int) ; 

__attribute__((used)) static struct data FUNC3(struct inbuf *inb, int len)
{
	struct data d = empty_data;

	if (len == 0)
		return empty_data;

	d = FUNC0(d, len);
	d.len = len;

	FUNC1(inb, d.val, len);

	FUNC2(inb, sizeof(uint32_t));

	return d;
}