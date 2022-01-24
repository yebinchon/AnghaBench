#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_4__* mp; } ;
typedef  TYPE_1__ xfs_alloc_arg_t ;
struct TYPE_7__ {scalar_t__ sb_inoalignmt; } ;
struct TYPE_8__ {TYPE_2__ m_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static inline int
FUNC3(
	xfs_alloc_arg_t	*args)
{
	if (FUNC2(&args->mp->m_sb) &&
	    args->mp->m_sb.sb_inoalignmt >=
	     FUNC0(args->mp, FUNC1(args->mp)))
		return args->mp->m_sb.sb_inoalignmt;
	return 1;
}