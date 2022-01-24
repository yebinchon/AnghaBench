#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* file; } ;
struct TYPE_8__ {TYPE_2__ open; } ;
struct nameidata {TYPE_3__ intent; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dentry; } ;
struct TYPE_9__ {TYPE_1__ f_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 

void FUNC2(struct nameidata *nd)
{
	if (nd->intent.open.file->f_path.dentry == NULL)
		FUNC1(nd->intent.open.file);
	else
		FUNC0(nd->intent.open.file);
}