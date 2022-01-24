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
struct file {int dummy; } ;
struct fdtable {int max_fds; scalar_t__ close_on_exec; scalar_t__ open_fds; scalar_t__ fd; } ;

/* Variables and functions */
 unsigned int BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct fdtable *nfdt, struct fdtable *ofdt)
{
	unsigned int cpy, set;

	FUNC0(nfdt->max_fds < ofdt->max_fds);

	cpy = ofdt->max_fds * sizeof(struct file *);
	set = (nfdt->max_fds - ofdt->max_fds) * sizeof(struct file *);
	FUNC1(nfdt->fd, ofdt->fd, cpy);
	FUNC2((char *)(nfdt->fd) + cpy, 0, set);

	cpy = ofdt->max_fds / BITS_PER_BYTE;
	set = (nfdt->max_fds - ofdt->max_fds) / BITS_PER_BYTE;
	FUNC1(nfdt->open_fds, ofdt->open_fds, cpy);
	FUNC2((char *)(nfdt->open_fds) + cpy, 0, set);
	FUNC1(nfdt->close_on_exec, ofdt->close_on_exec, cpy);
	FUNC2((char *)(nfdt->close_on_exec) + cpy, 0, set);
}