#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; char* ln_name; scalar_t__ type; int /*<<< orphan*/  ln_nlen; int /*<<< orphan*/  nlen; } ;
typedef  TYPE_1__ ARCHD ;

/* Variables and functions */
 scalar_t__ PAX_HLK ; 
 scalar_t__ PAX_HRG ; 
 scalar_t__ PAX_SLK ; 
 scalar_t__ iflag ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * rephead ; 
 int rmleadslash ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*) ; 

int
FUNC6(ARCHD *arcn)
{
	int res = 0;

	/*
	 * Strip off leading '/' if appropriate.
	 * Currently, this option is only set for the tar format.
	 */
	if (rmleadslash && arcn->name[0] == '/') {
		if (arcn->name[1] == '\0') {
			arcn->name[0] = '.';
		} else {
			(void)FUNC0(arcn->name, &arcn->name[1],
			    FUNC3(arcn->name));
			arcn->nlen--;
		}
		if (rmleadslash < 2) {
			rmleadslash = 2;
			FUNC1(0, "Removing leading / from absolute path names in the archive");
		}
	}
	if (rmleadslash && arcn->ln_name[0] == '/' &&
	    (arcn->type == PAX_HLK || arcn->type == PAX_HRG)) {
		if (arcn->ln_name[1] == '\0') {
			arcn->ln_name[0] = '.';
		} else {
			(void)FUNC0(arcn->ln_name, &arcn->ln_name[1],
			    FUNC3(arcn->ln_name));
			arcn->ln_nlen--;
		}
		if (rmleadslash < 2) {
			rmleadslash = 2;
			FUNC1(0, "Removing leading / from absolute path names in the archive");
		}
	}

	/*
	 * IMPORTANT: We have a problem. what do we do with symlinks?
	 * Modifying a hard link name makes sense, as we know the file it
	 * points at should have been seen already in the archive (and if it
	 * wasn't seen because of a read error or a bad archive, we lose
	 * anyway). But there are no such requirements for symlinks. On one
	 * hand the symlink that refers to a file in the archive will have to
	 * be modified to so it will still work at its new location in the
	 * file system. On the other hand a symlink that points elsewhere (and
	 * should continue to do so) should not be modified. There is clearly
	 * no perfect solution here. So we handle them like hardlinks. Clearly
	 * a replacement made by the interactive rename mapping is very likely
	 * to be correct since it applies to a single file and is an exact
	 * match. The regular expression replacements are a little harder to
	 * justify though. We claim that the symlink name is only likely
	 * to be replaced when it points within the file tree being moved and
	 * in that case it should be modified. what we really need to do is to
	 * call an oracle here. :)
	 */
	if (rephead != NULL) {
		/*
		 * we have replacement strings, modify the name and the link
		 * name if any.
		 */
		if ((res = FUNC2(arcn->name, &(arcn->nlen), 1)) != 0)
			return(res);

		if (((arcn->type == PAX_SLK) || (arcn->type == PAX_HLK) ||
		    (arcn->type == PAX_HRG)) &&
		    ((res = FUNC2(arcn->ln_name, &(arcn->ln_nlen), 0)) != 0))
			return(res);
	}

	if (iflag) {
		/*
		 * perform interactive file rename, then map the link if any
		 */
		if ((res = FUNC5(arcn)) != 0)
			return(res);
		if ((arcn->type == PAX_SLK) || (arcn->type == PAX_HLK) ||
		    (arcn->type == PAX_HRG))
			FUNC4(arcn->ln_name, &(arcn->ln_nlen), sizeof(arcn->ln_name));
	}
	return(res);
}