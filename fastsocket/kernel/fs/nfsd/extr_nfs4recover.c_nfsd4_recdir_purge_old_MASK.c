#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_1__ d_name; } ;
struct TYPE_8__ {TYPE_4__* dentry; int /*<<< orphan*/  mnt; } ;
struct TYPE_9__ {TYPE_2__ f_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  purge_old ; 
 TYPE_3__* rec_file ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 

void
FUNC5(void) {
	int status;

	if (!rec_file)
		return;
	status = FUNC1(rec_file->f_path.mnt);
	if (status)
		goto out;
	status = FUNC2(rec_file->f_path.dentry, purge_old);
	if (status == 0)
		FUNC4(rec_file, rec_file->f_path.dentry, 0);
	FUNC0(rec_file->f_path.mnt);
out:
	if (status)
		FUNC3("nfsd4: failed to purge old clients from recovery"
			" directory %s\n", rec_file->f_path.dentry->d_name.name);
}