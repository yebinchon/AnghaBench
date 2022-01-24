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
struct group {char* gr_name; } ;
typedef  int /*<<< orphan*/  gids ;
typedef  int gid_t ;

/* Variables and functions */
 struct group* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static char *
FUNC2(gid_t gid)
{
	struct group *gr;
	static char gids[10];

	if ((gr = FUNC0(gid)) == NULL) {
		(void)FUNC1(gids, sizeof(gids), "%u", gid);
		return (gids);
	} else
		return (gr->gr_name);
}