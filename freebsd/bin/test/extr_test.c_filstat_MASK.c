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
struct stat {int st_mode; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  enum token { ____Placeholder_token } token ;

/* Variables and functions */
#define  FILBDEV 144 
#define  FILCDEV 143 
#define  FILDIR 142 
#define  FILEX 141 
#define  FILEXIST 140 
#define  FILFIFO 139 
#define  FILGID 138 
#define  FILGZ 137 
#define  FILRD 136 
#define  FILREG 135 
#define  FILSGID 134 
#define  FILSOCK 133 
#define  FILSTCK 132 
#define  FILSUID 131 
#define  FILSYM 130 
#define  FILUID 129 
#define  FILWR 128 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  R_OK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int S_ISGID ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int S_ISUID ; 
 int S_ISVTX ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  W_OK ; 
 int /*<<< orphan*/  X_OK ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 scalar_t__ FUNC11 (char*,struct stat*) ; 

__attribute__((used)) static int
FUNC12(char *nm, enum token mode)
{
	struct stat s;

	if (mode == FILSYM ? FUNC10(nm, &s) : FUNC11(nm, &s))
		return 0;

	switch (mode) {
	case FILRD:
		return (FUNC7(nm, R_OK) == 0);
	case FILWR:
		return (FUNC7(nm, W_OK) == 0);
	case FILEX:
		/* XXX work around eaccess(2) false positives for superuser */
		if (FUNC7(nm, X_OK) != 0)
			return 0;
		if (FUNC2(s.st_mode) || FUNC9() != 0)
			return 1;
		return (s.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH)) != 0;
	case FILEXIST:
		return (FUNC7(nm, F_OK) == 0);
	case FILREG:
		return FUNC5(s.st_mode);
	case FILDIR:
		return FUNC2(s.st_mode);
	case FILCDEV:
		return FUNC1(s.st_mode);
	case FILBDEV:
		return FUNC0(s.st_mode);
	case FILFIFO:
		return FUNC3(s.st_mode);
	case FILSOCK:
		return FUNC6(s.st_mode);
	case FILSYM:
		return FUNC4(s.st_mode);
	case FILSUID:
		return (s.st_mode & S_ISUID) != 0;
	case FILSGID:
		return (s.st_mode & S_ISGID) != 0;
	case FILSTCK:
		return (s.st_mode & S_ISVTX) != 0;
	case FILGZ:
		return s.st_size > (off_t)0;
	case FILUID:
		return s.st_uid == FUNC9();
	case FILGID:
		return s.st_gid == FUNC8();
	default:
		return 1;
	}
}