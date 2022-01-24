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
struct qitem {char* queueid; char* sender; char* addr; int /*<<< orphan*/ * queuef; int /*<<< orphan*/  queuefn; } ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(struct qitem *it)
{
	int error;
	int queuefd;

	queuefd = FUNC6(it->queuefn, O_CREAT|O_EXCL|O_RDWR, 0660);
	if (queuefd == -1)
		return (-1);
	if (FUNC0(queuefd, 0660) < 0)
		return (-1);
	it->queuef = FUNC1(queuefd, "w+");
	if (it->queuef == NULL)
		return (-1);

	error = FUNC4(it->queuef,
			"ID: %s\n"
			"Sender: %s\n"
			"Recipient: %s\n",
			 it->queueid,
			 it->sender,
			 it->addr);

	if (error <= 0)
		return (-1);

	if (FUNC2(it->queuef) != 0 || FUNC5(FUNC3(it->queuef)) != 0)
		return (-1);

	return (0);
}