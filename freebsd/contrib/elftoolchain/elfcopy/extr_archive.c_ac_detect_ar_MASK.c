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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 struct archive* FUNC2 () ; 
 int FUNC3 (struct archive*,struct archive_entry**) ; 
 int FUNC4 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 

int
FUNC6(int ifd)
{
	struct archive		*a;
	struct archive_entry	*entry;
	int			 r;

	r = -1;
	if ((a = FUNC2()) == NULL)
		return (0);
	FUNC5(a);
	if (FUNC4(a, ifd, 10240) == ARCHIVE_OK)
		r = FUNC3(a, &entry);
	FUNC0(a);
	FUNC1(a);

	return (r == ARCHIVE_OK);
}