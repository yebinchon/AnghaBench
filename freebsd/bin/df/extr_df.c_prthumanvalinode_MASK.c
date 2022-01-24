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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_DECIMAL ; 
 int HN_DIVISOR_1000 ; 
 int HN_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long long) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static void
FUNC3(const char *fmt, int64_t bytes)
{
	char buf[6];
	int flags;

	flags = HN_NOSPACE | HN_DECIMAL | HN_DIVISOR_1000;

	FUNC0(buf, sizeof(buf) - (bytes < 0 ? 0 : 1),
	    bytes, "", HN_AUTOSCALE, flags);

	FUNC1("value", "%lld", (long long) bytes);
	FUNC2(fmt, buf);
}