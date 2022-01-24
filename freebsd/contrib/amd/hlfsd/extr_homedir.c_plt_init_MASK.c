#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  username2uid_t ;
typedef  int /*<<< orphan*/  uid2home_t ;
struct passwd {char* pw_dir; int /*<<< orphan*/  pw_name; int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  cur_pwtab_num ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct passwd* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  plt_compare_fxn ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ pwtab ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* root_home ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unt_compare_fxn ; 
 scalar_t__ untab ; 
 char* FUNC10 (char*) ; 

void
FUNC11(void)
{
  struct passwd *pent_p;

  if (FUNC6() < 0)		/* could not reset table. skip. */
    return;

  FUNC5(XLOG_INFO, "reading password map");

  FUNC4();			/* prepare to read passwd entries */
  while ((pent_p = FUNC3()) != (struct passwd *) NULL) {
    FUNC9(pent_p->pw_uid, pent_p->pw_dir, pent_p->pw_name);
    if (FUNC0("root", pent_p->pw_name)) {
      int len;
      if (root_home)
	FUNC1(root_home);
      root_home = FUNC10(pent_p->pw_dir);
      len = FUNC8(root_home);
      /* remove any trailing '/' chars from root's home (even if just one) */
      while (len > 0 && root_home[len - 1] == '/') {
	len--;
	root_home[len] = '\0';
      }
    }
  }
  FUNC2();

  FUNC7((char *) pwtab, cur_pwtab_num, sizeof(uid2home_t),
	plt_compare_fxn);
  FUNC7((char *) untab, cur_pwtab_num, sizeof(username2uid_t),
	unt_compare_fxn);

  if (!root_home)
    root_home = FUNC10("");

  FUNC5(XLOG_INFO, "password map read and sorted");
}