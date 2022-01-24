#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* voidp ;
struct TYPE_12__ {int np_ping; scalar_t__ np_ttl; int np_error; int /*<<< orphan*/  np_xid; } ;
typedef  TYPE_2__ nfs_private ;
struct TYPE_11__ {int fs_flags; int /*<<< orphan*/  fs_host; scalar_t__ fs_private; } ;
typedef  TYPE_1__ fserver ;

/* Variables and functions */
 int FSF_DOWN ; 
 int FSF_VALID ; 
 int FSF_WANT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAX_ALLOWED_PINGS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(voidp v)
{
  fserver *fs = v;
  nfs_private *np = (nfs_private *) fs->fs_private;

  /*
   * Another ping has failed
   */
  np->np_ping++;
  if (np->np_ping > 1)
    FUNC7(fs, "not responding");

  /*
   * Not known to be up any longer
   */
  if (FUNC0(fs))
    fs->fs_flags &= ~FSF_VALID;

  /*
   * If ttl has expired then guess that it is dead
   */
  if (np->np_ttl < FUNC3(NULL)) {
    int oflags = fs->fs_flags;
    FUNC4("ttl has expired");
    if ((fs->fs_flags & FSF_DOWN) == 0) {
      /*
       * Server was up, but is now down.
       */
      FUNC7(fs, "is down");
      fs->fs_flags |= FSF_DOWN | FSF_VALID;
      /*
       * Since the server is down, the portmap
       * information may now be wrong, so it
       * must be flushed from the local cache
       */
      FUNC5(fs);
      np->np_error = -1;
      FUNC2(fs); /* check if IP addr of fserver changed */
    } else {
      /*
       * Known to be down
       */
      if ((fs->fs_flags & FSF_VALID) == 0)
	FUNC7(fs, "starts down");
      fs->fs_flags |= FSF_VALID;
    }
    if (oflags != fs->fs_flags && (fs->fs_flags & FSF_WANT))
      FUNC8(fs);
    /*
     * Reset failed ping count
     */
    np->np_ping = 0;
  } else {
    if (np->np_ping > 1)
      FUNC4("%d pings to %s failed - at most %d allowed", np->np_ping, fs->fs_host, MAX_ALLOWED_PINGS);
  }

  /*
   * New RPC xid, so any late responses to the previous ping
   * get ignored...
   */
  np->np_xid = FUNC1();

  /*
   * Run keepalive again
   */
  FUNC6(fs);
}