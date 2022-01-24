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
struct TYPE_9__ {int /*<<< orphan*/  fhandle3_val; int /*<<< orphan*/  fhandle3_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  data_val; int /*<<< orphan*/  data_len; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_8__ {int count; TYPE_2__ dir; } ;
typedef  TYPE_3__ READDIR3args ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 TYPE_4__* rootfh ; 

__attribute__((used)) static void
FUNC1(void *argp)
{
	READDIR3args *args = argp;

	FUNC0(args, sizeof (*args));
	args->dir.data.data_len = rootfh->fhandle3_len;
	args->dir.data.data_val = rootfh->fhandle3_val;
	args->count = 1024;
}