#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  voidp ;
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; scalar_t__ h_addr; scalar_t__ h_name; } ;
struct TYPE_8__ {int fs_flags; TYPE_1__* fs_ip; int /*<<< orphan*/  fs_host; } ;
typedef  TYPE_2__ fserver ;
struct TYPE_7__ {struct in_addr sin_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int FSF_DOWN ; 
 int FSF_FORCE_UNMOUNT ; 
 int FSF_VALID ; 
 int FSF_WANT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  XLOG_WARNING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct hostent* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(fserver *fs)
{
  struct hostent *hp = NULL;
  struct in_addr ia;
  char *old_ipaddr, *new_ipaddr;

  hp = FUNC4(fs->fs_host);
  if (!hp ||
      hp->h_addrtype != AF_INET ||
      !FUNC0((char *) hp->h_name, fs->fs_host) ||
      FUNC7((voidp) &fs->fs_ip->sin_addr,
	     (voidp) hp->h_addr,
	     sizeof(fs->fs_ip->sin_addr)) == 0)
    return;
  /* if got here: downed server changed IP address */
  old_ipaddr = FUNC10(FUNC5(fs->fs_ip->sin_addr));
  FUNC8((voidp) &ia, (voidp) hp->h_addr, sizeof(struct in_addr));
  new_ipaddr = FUNC5(ia);	/* ntoa uses static buf */
  FUNC9(XLOG_WARNING, "EZK: down fileserver %s changed ip: %s -> %s",
       fs->fs_host, old_ipaddr, new_ipaddr);
  FUNC1(old_ipaddr);
  /* copy new IP addr */
  FUNC8((voidp) &fs->fs_ip->sin_addr,
	  (voidp) hp->h_addr,
	  sizeof(fs->fs_ip->sin_addr));
  /* XXX: do we need to un/set these flags? */
  fs->fs_flags &= ~FSF_DOWN;
  fs->fs_flags |= FSF_VALID | FSF_WANT;
  FUNC6(fs);		/* XXX: a race with flush_srvr_nfs_cache? */
  FUNC3(fs);
  fs->fs_flags |= FSF_FORCE_UNMOUNT;

#if 0
  flush_nfs_fhandle_cache(fs);	/* done in caller: nfs_keepalive_timeout */
  /* XXX: need to purge nfs_private so that somehow it will get re-initialized? */
#endif /* 0 */
}