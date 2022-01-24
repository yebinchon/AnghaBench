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
struct afs_callback {void* type; void* expiry; void* version; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const __be32 **_bp,
				       struct afs_callback *cb)
{
	const __be32 *bp = *_bp;

	cb->version	= FUNC0(*bp++);
	cb->expiry	= FUNC0(*bp++);
	cb->type	= FUNC0(*bp++);
	*_bp = bp;
}