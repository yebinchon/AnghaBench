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
struct nfs_fh {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static __be32 *
FUNC3(__be32 *p, struct nfs_fh *f)
{
	*p++ = FUNC1(f->size);
	if (f->size) p[FUNC0(f->size)-1] = 0; /* don't leak anything */
	FUNC2(p, f->data, f->size);
	return p + FUNC0(f->size);
}