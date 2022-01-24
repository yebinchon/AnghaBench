#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ mode; } ;
struct nw_info_struct {TYPE_1__ nfs; void* lastAccessDate; void* modifyDate; void* creationDate; void* modifyTime; void* creationTime; int /*<<< orphan*/  attributes; scalar_t__ nameLen; int /*<<< orphan*/  entryName; int /*<<< orphan*/  DosDirNum; int /*<<< orphan*/  dirEntNum; int /*<<< orphan*/  volNumber; } ;
struct ncp_server {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  aDIR ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nw_info_struct*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ncp_server*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 

int
FUNC5(struct ncp_server *server, const char *volname,
		  struct nw_info_struct *target)
{
	int result;

	FUNC2(target, 0, sizeof(*target));
	result = FUNC3(server, volname,
			&target->volNumber, &target->dirEntNum, &target->DosDirNum);
	if (result) {
		return result;
	}
	target->nameLen = FUNC4(volname);
	FUNC1(target->entryName, volname, target->nameLen+1);
	target->attributes = aDIR;
	/* set dates to Jan 1, 1986  00:00 */
	target->creationTime = target->modifyTime = FUNC0(0x0000);
	target->creationDate = target->modifyDate = target->lastAccessDate = FUNC0(0x0C21);
	target->nfs.mode = 0;
	return 0;
}