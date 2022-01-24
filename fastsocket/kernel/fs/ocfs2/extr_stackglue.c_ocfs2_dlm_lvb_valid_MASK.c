#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ocfs2_dlm_lksb {int dummy; } ocfs2_dlm_lksb ;
struct TYPE_4__ {TYPE_1__* sp_ops; } ;
struct TYPE_3__ {int (* lvb_valid ) (union ocfs2_dlm_lksb*) ;} ;

/* Variables and functions */
 TYPE_2__* active_stack ; 
 int FUNC0 (union ocfs2_dlm_lksb*) ; 

int FUNC1(union ocfs2_dlm_lksb *lksb)
{
	return active_stack->sp_ops->lvb_valid(lksb);
}