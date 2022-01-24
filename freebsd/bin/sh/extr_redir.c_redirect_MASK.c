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
struct TYPE_4__ {int dupfd; } ;
struct TYPE_3__ {int fd; scalar_t__ type; union node* next; } ;
union node {TYPE_2__ ndup; TYPE_1__ nfile; } ;
struct redirtab {int* renamed; int fd0_redirected; struct redirtab* next; scalar_t__ empty_redirs; } ;

/* Variables and functions */
 int CLOSED ; 
#define  EBADF 128 
 int EMPTY ; 
 int /*<<< orphan*/  F_DUPFD_CLOEXEC ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 scalar_t__ NFROMFD ; 
 scalar_t__ NTOFD ; 
 int REDIR_BACKQ ; 
 int REDIR_PUSH ; 
 struct redirtab* FUNC0 (int) ; 
 scalar_t__ empty_redirs ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int fd0_redirected ; 
 int /*<<< orphan*/  memout ; 
 int /*<<< orphan*/  FUNC3 (union node*,char*) ; 
 int /*<<< orphan*/ * out1 ; 
 int /*<<< orphan*/ * out2 ; 
 struct redirtab* redirlist ; 
 char* FUNC4 (int) ; 

void
FUNC5(union node *redir, int flags)
{
	union node *n;
	struct redirtab *sv = NULL;
	int i;
	int fd;
	char memory[10];	/* file descriptors to write to memory */

	INTOFF;
	for (i = 10 ; --i >= 0 ; )
		memory[i] = 0;
	memory[1] = flags & REDIR_BACKQ;
	if (flags & REDIR_PUSH) {
		empty_redirs++;
		if (redir != NULL) {
			sv = FUNC0(sizeof (struct redirtab));
			for (i = 0 ; i < 10 ; i++)
				sv->renamed[i] = EMPTY;
			sv->fd0_redirected = fd0_redirected;
			sv->empty_redirs = empty_redirs - 1;
			sv->next = redirlist;
			redirlist = sv;
			empty_redirs = 0;
		}
	}
	for (n = redir ; n ; n = n->nfile.next) {
		fd = n->nfile.fd;
		if (fd == 0)
			fd0_redirected = 1;
		if ((n->nfile.type == NTOFD || n->nfile.type == NFROMFD) &&
		    n->ndup.dupfd == fd)
			continue; /* redirect from/to same file descriptor */

		if ((flags & REDIR_PUSH) && sv->renamed[fd] == EMPTY) {
			INTOFF;
			if ((i = FUNC2(fd, F_DUPFD_CLOEXEC, 10)) == -1) {
				switch (errno) {
				case EBADF:
					i = CLOSED;
					break;
				default:
					INTON;
					FUNC1("%d: %s", fd, FUNC4(errno));
					break;
				}
			}
			sv->renamed[fd] = i;
			INTON;
		}
		FUNC3(n, memory);
		INTON;
		INTOFF;
	}
	if (memory[1])
		out1 = &memout;
	if (memory[2])
		out2 = &memout;
	INTON;
}