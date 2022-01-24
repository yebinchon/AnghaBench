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
struct TYPE_3__ {struct nfs_unlinkdata* name; } ;
struct TYPE_4__ {TYPE_1__ name; } ;
struct nfs_unlinkdata {TYPE_2__ args; int /*<<< orphan*/  cred; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct nfs_unlinkdata *data)
{
	FUNC0(data->dir);
	FUNC2(data->cred);
	FUNC1(data->args.name.name);
	FUNC1(data);
}