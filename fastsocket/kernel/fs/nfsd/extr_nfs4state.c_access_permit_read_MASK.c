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

/* Variables and functions */
 int /*<<< orphan*/  NFS4_SHARE_ACCESS_BOTH ; 
 int /*<<< orphan*/  NFS4_SHARE_ACCESS_READ ; 
 int /*<<< orphan*/  NFS4_SHARE_ACCESS_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static inline int
FUNC1(unsigned long access_bmap)
{
	return FUNC0(NFS4_SHARE_ACCESS_READ, &access_bmap) ||
		FUNC0(NFS4_SHARE_ACCESS_BOTH, &access_bmap) ||
		FUNC0(NFS4_SHARE_ACCESS_WRITE, &access_bmap);
}