#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int fs_flags; int fs_pinger; scalar_t__ fs_cid; int /*<<< orphan*/  fs_host; } ;
typedef  TYPE_1__ fserver ;

/* Variables and functions */
 int AM_PINGER ; 
 int FSF_DOWN ; 
 int FSF_PINGING ; 
 int FSF_PING_UNINIT ; 
 int FSF_VALID ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(fserver *fs, int pingval)
{
  if (pingval == 0)	    /* could be because ping mnt option not found */
    pingval = AM_PINGER;
  /* if pings haven't been initalized, then init them for first time */
  if (fs->fs_flags & FSF_PING_UNINIT) {
    fs->fs_flags &= ~FSF_PING_UNINIT;
    FUNC2(XLOG_INFO, "initializing %s's pinger to %d sec", fs->fs_host, pingval);
    goto do_pings;
  }

  if ((fs->fs_flags & FSF_PINGING)  &&  fs->fs_pinger == pingval) {
    FUNC0("already running pings to %s", fs->fs_host);
    return;
  }

  /* if got here, then we need to update the ping value */
  FUNC2(XLOG_INFO, "changing %s's ping value from %d%s to %d%s",
       fs->fs_host,
       fs->fs_pinger, (fs->fs_pinger < 0 ? " (off)" : ""),
       pingval, (pingval < 0 ? " (off)" : ""));
 do_pings:
  fs->fs_pinger = pingval;

  if (fs->fs_cid)
    FUNC4(fs->fs_cid);
  if (pingval < 0) {
    FUNC3(fs, "wired up (pings disabled)");
    fs->fs_flags |= FSF_VALID;
    fs->fs_flags &= ~FSF_DOWN;
  } else {
    fs->fs_flags |= FSF_PINGING;
    FUNC1(fs);
  }
}