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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  ntfschar ;
typedef  scalar_t__ IGNORE_CASE_BOOL ;

/* Variables and functions */
 scalar_t__ const CASE_SENSITIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

bool FUNC2(const ntfschar *s1, size_t s1_len,
		const ntfschar *s2, size_t s2_len, const IGNORE_CASE_BOOL ic,
		const ntfschar *upcase, const u32 upcase_size)
{
	if (s1_len != s2_len)
		return false;
	if (ic == CASE_SENSITIVE)
		return !FUNC1(s1, s2, s1_len);
	return !FUNC0(s1, s2, s1_len, upcase, upcase_size);
}