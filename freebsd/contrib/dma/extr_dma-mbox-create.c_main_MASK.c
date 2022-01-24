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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CREATE ; 
 int /*<<< orphan*/  CAP_FCHMOD ; 
 int /*<<< orphan*/  CAP_FCHOWN ; 
 int /*<<< orphan*/  CAP_LOOKUP ; 
 int /*<<< orphan*/  CAP_READ ; 
 char const* DMA_GROUP ; 
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_NOPERM ; 
 int /*<<< orphan*/  EX_NOUSER ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  LOG_MAIL ; 
 int /*<<< orphan*/  LOG_NDELAY ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int O_CREAT ; 
 int O_NOFOLLOW ; 
 int O_RDONLY ; 
 char const* _PATH_MAILDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 () ; 
 struct group* FUNC10 (char const*) ; 
 struct passwd* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC13 (char const*,int) ; 
 int FUNC14 (int,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (char const*,char) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,char const*) ; 

int
FUNC19(int argc, char **argv)
{
#if USE_CAPSICUM
	cap_rights_t rights;
#endif
	const char *user;
	struct passwd *pw;
	struct group *gr;
	uid_t user_uid;
	gid_t mail_gid;
	int f, maildirfd;

	/*
	 * Open log fd now for capability sandbox.
	 */
	FUNC15("dma-mbox-create", LOG_NDELAY, LOG_MAIL);

	errno = 0;
	gr = FUNC10(DMA_GROUP);
	if (!gr)
		FUNC12(EX_CONFIG, "cannot find dma group `%s'", DMA_GROUP);

	mail_gid = gr->gr_gid;

	if (FUNC16(mail_gid) != 0)
		FUNC12(EX_NOPERM, "cannot set gid to %d (%s)", mail_gid, DMA_GROUP);
	if (FUNC9() != mail_gid)
		FUNC12(EX_NOPERM, "cannot set gid to %d (%s), still at %d", mail_gid, DMA_GROUP, FUNC9());

	/*
	 * We take exactly one argument: the username.
	 */
	if (argc != 2) {
		errno = 0;
		FUNC12(EX_USAGE, "no arguments");
	}
	user = argv[1];

	FUNC18(LOG_NOTICE, "creating mbox for `%s'", user);

	/* the username may not contain a pathname separator */
	if (FUNC17(user, '/')) {
		errno = 0;
		FUNC12(EX_DATAERR, "path separator in username `%s'", user);
		FUNC6(1);
	}

	/* verify the user exists */
	errno = 0;
	pw = FUNC11(user);
	if (!pw)
		FUNC12(EX_NOUSER, "cannot find user `%s'", user);

	maildirfd = FUNC13(_PATH_MAILDIR, O_RDONLY);
	if (maildirfd < 0)
		FUNC12(EX_NOINPUT, "cannot open maildir %s", _PATH_MAILDIR);

	/*
	 * Cache NLS data, for strerror, for err(3), before entering capability
	 * mode.
	 */
	FUNC2();

	/*
	 * Cache local time before entering Capsicum capability sandbox.
	 */
	FUNC3();

#if USE_CAPSICUM
	cap_rights_init(&rights, CAP_CREATE, CAP_FCHMOD, CAP_FCHOWN,
	    CAP_LOOKUP, CAP_READ);
	if (cap_rights_limit(maildirfd, &rights) < 0 && errno != ENOSYS)
		err(EX_OSERR, "can't limit maildirfd rights");

	/* Enter Capsicum capability sandbox */
	if (caph_enter() < 0)
		err(EX_OSERR, "cap_enter");
#endif

	user_uid = pw->pw_uid;

	f = FUNC14(maildirfd, user, O_RDONLY|O_CREAT|O_NOFOLLOW, 0600);
	if (f < 0)
		FUNC12(EX_NOINPUT, "cannot open mbox `%s'", user);

	if (FUNC8(f, user_uid, mail_gid))
		FUNC12(EX_OSERR, "cannot change owner of mbox `%s'", user);

	if (FUNC7(f, 0620))
		FUNC12(EX_OSERR, "cannot change permissions of mbox `%s'",
		    user);

	/* file should be present with the right owner and permissions */

	FUNC18(LOG_NOTICE, "successfully created mbox for `%s'", user);

	return (0);
}