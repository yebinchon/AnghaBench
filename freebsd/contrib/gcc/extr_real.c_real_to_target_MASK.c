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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 struct real_format* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct real_format const*) ; 
 long FUNC2 (long*,int /*<<< orphan*/  const*,struct real_format const*) ; 

long
FUNC3 (long *buf, const REAL_VALUE_TYPE *r, enum machine_mode mode)
{
  const struct real_format *fmt;

  fmt = FUNC0 (mode);
  FUNC1 (fmt);

  return FUNC2 (buf, r, fmt);
}