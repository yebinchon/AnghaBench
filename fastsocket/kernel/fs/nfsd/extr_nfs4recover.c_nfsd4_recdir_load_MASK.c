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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;
struct TYPE_6__ {TYPE_4__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  load_recdir ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* rec_file ; 

int
FUNC2(void) {
	int status;

	if (!rec_file)
		return 0;

	status = FUNC0(rec_file->f_path.dentry, load_recdir);
	if (status)
		FUNC1("nfsd4: failed loading clients from recovery"
			" directory %s\n", rec_file->f_path.dentry->d_name.name);
	return status;
}