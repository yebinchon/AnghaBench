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
struct TYPE_4__ {size_t dupfd; } ;
struct TYPE_3__ {int fd; int type; char* expfname; } ;
union node {TYPE_2__ ndup; TYPE_1__ nfile; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cflag ; 
 int EEXIST ; 
#define  NAPPEND 136 
#define  NCLOBBER 135 
#define  NFROM 134 
#define  NFROMFD 133 
#define  NFROMTO 132 
#define  NHERE 131 
#define  NTO 130 
#define  NTOFD 129 
#define  NXHERE 128 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,struct stat*) ; 
 int FUNC6 (char const*,int,...) ; 
 int FUNC7 (union node*) ; 
 int FUNC8 (char const*,struct stat*) ; 
 char* FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(union node *redir, char memory[10])
{
	struct stat sb;
	int fd = redir->nfile.fd;
	const char *fname;
	int f;
	int e;

	memory[fd] = 0;
	switch (redir->nfile.type) {
	case NFROM:
		fname = redir->nfile.expfname;
		if ((f = FUNC6(fname, O_RDONLY)) < 0)
			FUNC4("cannot open %s: %s", fname, FUNC9(errno));
		break;
	case NFROMTO:
		fname = redir->nfile.expfname;
		if ((f = FUNC6(fname, O_RDWR|O_CREAT, 0666)) < 0)
			FUNC4("cannot create %s: %s", fname, FUNC9(errno));
		break;
	case NTO:
		if (Cflag) {
			fname = redir->nfile.expfname;
			if (FUNC8(fname, &sb) == -1) {
				if ((f = FUNC6(fname, O_WRONLY|O_CREAT|O_EXCL, 0666)) < 0)
					FUNC4("cannot create %s: %s", fname, FUNC9(errno));
			} else if (!FUNC0(sb.st_mode)) {
				if ((f = FUNC6(fname, O_WRONLY, 0666)) < 0)
					FUNC4("cannot create %s: %s", fname, FUNC9(errno));
				if (FUNC5(f, &sb) != -1 && FUNC0(sb.st_mode)) {
					FUNC2(f);
					FUNC4("cannot create %s: %s", fname,
					    FUNC9(EEXIST));
				}
			} else
				FUNC4("cannot create %s: %s", fname,
				    FUNC9(EEXIST));
			break;
		}
		/* FALLTHROUGH */
	case NCLOBBER:
		fname = redir->nfile.expfname;
		if ((f = FUNC6(fname, O_WRONLY|O_CREAT|O_TRUNC, 0666)) < 0)
			FUNC4("cannot create %s: %s", fname, FUNC9(errno));
		break;
	case NAPPEND:
		fname = redir->nfile.expfname;
		if ((f = FUNC6(fname, O_WRONLY|O_CREAT|O_APPEND, 0666)) < 0)
			FUNC4("cannot create %s: %s", fname, FUNC9(errno));
		break;
	case NTOFD:
	case NFROMFD:
		if (redir->ndup.dupfd >= 0) {	/* if not ">&-" */
			if (memory[redir->ndup.dupfd])
				memory[fd] = 1;
			else {
				if (FUNC3(redir->ndup.dupfd, fd) < 0)
					FUNC4("%d: %s", redir->ndup.dupfd,
							FUNC9(errno));
			}
		} else {
			FUNC2(fd);
		}
		return;
	case NHERE:
	case NXHERE:
		f = FUNC7(redir);
		break;
	default:
		FUNC1();
	}
	if (f != fd) {
		if (FUNC3(f, fd) == -1) {
			e = errno;
			FUNC2(f);
			FUNC4("%d: %s", fd, FUNC9(e));
		}
		FUNC2(f);
	}
}