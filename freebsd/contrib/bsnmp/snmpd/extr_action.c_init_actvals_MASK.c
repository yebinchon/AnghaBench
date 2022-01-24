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
typedef  scalar_t__ u_long ;
struct utsname {char* nodename; char* sysname; char* release; } ;
struct TYPE_4__ {size_t len; scalar_t__* subs; } ;
struct TYPE_3__ {TYPE_2__ object_id; int /*<<< orphan*/ * descr; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 size_t ASN_MAXOIDLEN ; 
 int /*<<< orphan*/  KERN_HOSTID ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 TYPE_2__ oid_freeBSDVersion ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char**,char*) ; 
 scalar_t__ FUNC7 (char*,char**,int) ; 
 TYPE_1__ systemg ; 
 int FUNC8 (struct utsname*) ; 

int
FUNC9(void)
{
	struct utsname uts;
	char *hostid;
	size_t len;
#ifdef __FreeBSD__
	char *rel, *p, *end;
	u_long num;
#endif

	if (FUNC8(&uts) == -1)
		return (-1);

	if ((systemg.name = FUNC4(uts.nodename)) == NULL)
		return (-1);

	if ((hostid = FUNC0(KERN_HOSTID)) == NULL)
		return (-1);

	len = FUNC5(uts.nodename) + 1;
	len += FUNC5(hostid) + 1;
	len += FUNC5(uts.sysname) + 1;
	len += FUNC5(uts.release) + 1;

	if ((systemg.descr = FUNC2(len)) == NULL) {
		FUNC1(hostid);
		return (-1);
	}
	FUNC3(systemg.descr, "%s %s %s %s", uts.nodename, hostid, uts.sysname,
	    uts.release);

#ifdef __FreeBSD__
	/*
	 * Construct a FreeBSD oid
	 */
	systemg.object_id = oid_freeBSDVersion;
	rel = uts.release;
	while ((p = strsep(&rel, ".")) != NULL &&
	    systemg.object_id.len < ASN_MAXOIDLEN) {
		systemg.object_id.subs[systemg.object_id.len] = 0;
		if (*p != '\0') {
			num = strtoul(p, &end, 10);
			if (end == p)
				break;
			systemg.object_id.subs[systemg.object_id.len] = num;
		}
		systemg.object_id.len++;
	}
#endif

	FUNC1(hostid);

	return (0);
}