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
struct real_format {int /*<<< orphan*/  (* decode ) (struct real_format const*,int /*<<< orphan*/ *,long const*) ;} ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 struct real_format* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct real_format const*) ; 
 int /*<<< orphan*/  FUNC2 (struct real_format const*,int /*<<< orphan*/ *,long const*) ; 

void
FUNC3 (REAL_VALUE_TYPE *r, const long *buf, enum machine_mode mode)
{
  const struct real_format *fmt;

  fmt = FUNC0 (mode);
  FUNC1 (fmt);

  (*fmt->decode) (fmt, r, buf);
}