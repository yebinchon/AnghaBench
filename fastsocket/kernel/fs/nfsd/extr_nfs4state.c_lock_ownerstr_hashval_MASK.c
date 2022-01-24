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
typedef  unsigned int u32 ;
struct xdr_netobj {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 unsigned int LOCK_HASH_MASK ; 
 unsigned int FUNC0 (struct inode*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int
FUNC2(struct inode *inode, u32 cl_id,
		struct xdr_netobj *ownername)
{
	return (FUNC0(inode) + cl_id
			+ FUNC1(ownername->data, ownername->len))
		& LOCK_HASH_MASK;
}