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
typedef  scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ const SM_MAXSTRLEN ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__ const) ; 
 int /*<<< orphan*/ * FUNC3 (struct xdr_stream*,scalar_t__ const) ; 

__attribute__((used)) static int FUNC4(struct xdr_stream *xdr, const char *string)
{
	const u32 len = FUNC0(string);
	__be32 *p;

	if (FUNC1(len > SM_MAXSTRLEN))
		return -EIO;
	p = FUNC3(xdr, sizeof(u32) + len);
	if (FUNC1(p == NULL))
		return -EIO;
	FUNC2(p, string, len);
	return 0;
}