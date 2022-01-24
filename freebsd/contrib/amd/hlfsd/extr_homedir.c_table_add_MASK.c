#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ uid; void* home; void* username; void* uname; scalar_t__ last_status; scalar_t__ last_access_time; scalar_t__ child; } ;
typedef  TYPE_1__ username2uid_t ;
typedef  TYPE_1__ uid2home_t ;
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_INFO ; 
 int cur_pwtab_num ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__,void*) ; 
 int max_pwtab_num ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* pwtab ; 
 TYPE_1__* untab ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 void* FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(u_int u, const char *h, const char *n)
{
  int i;

  if (max_pwtab_num <= 0) {	/* was never initialized */
    max_pwtab_num = 1;
    pwtab = (uid2home_t *) FUNC3(max_pwtab_num *
				   sizeof(uid2home_t));
    FUNC1((char *) &pwtab[0], 0, max_pwtab_num * sizeof(uid2home_t));
    untab = (username2uid_t *) FUNC3(max_pwtab_num *
				       sizeof(username2uid_t));
    FUNC1((char *) &untab[0], 0, max_pwtab_num * sizeof(username2uid_t));
  }

  /* check if need more space. */
  if (cur_pwtab_num + 1 > max_pwtab_num) {
    /* need more space in table */
    max_pwtab_num *= 2;
    FUNC2(XLOG_INFO, "reallocating table spaces to %d entries", max_pwtab_num);
    pwtab = (uid2home_t *) FUNC4(pwtab,
				    sizeof(uid2home_t) * max_pwtab_num);
    untab = (username2uid_t *) FUNC4(untab,
					sizeof(username2uid_t) *
					max_pwtab_num);
    /* zero out newly added entries */
    for (i=cur_pwtab_num; i<max_pwtab_num; ++i) {
      FUNC1((char *) &pwtab[i], 0, sizeof(uid2home_t));
      FUNC1((char *) &untab[i], 0, sizeof(username2uid_t));
    }
  }

  /* do NOT add duplicate entries (this is an O(N^2) algorithm... */
  for (i=0; i<cur_pwtab_num; ++i)
    if (u == pwtab[i].uid  &&  u != 0 ) {
      FUNC0("ignoring duplicate home %s for uid %d (already %s)",
	   h, u, pwtab[i].home);
      return;
    }

  /* add new password entry */
  pwtab[cur_pwtab_num].home = FUNC5(h);
  pwtab[cur_pwtab_num].child = 0;
  pwtab[cur_pwtab_num].last_access_time = 0;
  pwtab[cur_pwtab_num].last_status = 0;	/* assume best: used homedir */
  pwtab[cur_pwtab_num].uid = u;

  /* add new userhome entry */
  untab[cur_pwtab_num].username = FUNC5(n);

  /* just a second pointer */
  pwtab[cur_pwtab_num].uname = untab[cur_pwtab_num].username;
  untab[cur_pwtab_num].uid = u;
  untab[cur_pwtab_num].home = pwtab[cur_pwtab_num].home;	/* a ptr */

  /* increment counter */
  ++cur_pwtab_num;
}