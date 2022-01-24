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
typedef  int /*<<< orphan*/  uid2home_t ;
struct passwd {int dummy; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_4__ {char* home; char* uname; scalar_t__ child; void* uid; } ;
struct TYPE_3__ {char* username; char* home; void* uid; } ;

/* Variables and functions */
 void* INVALIDID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int cur_pwtab_num ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct passwd* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * lastchild ; 
 scalar_t__ max_pwtab_num ; 
 TYPE_2__* pwtab ; 
 char* root_home ; 
 TYPE_1__* untab ; 

__attribute__((used)) static int
FUNC4(void)
{
  int i;

  FUNC3();
  if (FUNC2() == (struct passwd *) NULL) {
    FUNC1();
    return -1;			/* did not reset table */
  }
  FUNC1();

  lastchild = (uid2home_t *) NULL;

  if (max_pwtab_num > 0)	/* was used already. cleanup old table */
    for (i = 0; i < cur_pwtab_num; ++i) {
      if (pwtab[i].home) {
	FUNC0(pwtab[i].home);
	pwtab[i].home = (char *) NULL;
      }
      pwtab[i].uid = INVALIDID;	/* not a valid uid (yet...) */
      pwtab[i].child = (pid_t) 0;
      pwtab[i].uname = (char *) NULL;	/* only a ptr to untab[i].username */
      if (untab[i].username) {
	FUNC0(untab[i].username);
	untab[i].username = (char *) NULL;
      }
      untab[i].uid = INVALIDID;	/* invalid uid */
      untab[i].home = (char *) NULL;	/* only a ptr to pwtab[i].home  */
    }
  cur_pwtab_num = 0;		/* zero current size */

  if (root_home)
    FUNC0(root_home);

  return 0;			/* resetting ok */
}