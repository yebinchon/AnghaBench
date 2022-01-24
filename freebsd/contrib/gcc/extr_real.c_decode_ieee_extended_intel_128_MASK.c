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
struct real_format {int dummy; } ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct real_format const*,int /*<<< orphan*/ *,long const*) ; 

__attribute__((used)) static void
FUNC1 (const struct real_format *fmt, REAL_VALUE_TYPE *r,
				const long *buf)
{
  /* All the padding in an Intel-format extended real goes at the high end.  */
  FUNC0 (fmt, r, buf);
}