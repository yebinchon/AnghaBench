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
struct stat {long st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long) ; 
 int FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 

size_t FUNC2 (int fd)
{
	int err;
	struct stat stat;

	err = FUNC1 (fd, &stat);
	FUNC0 (stderr, "filesize: %ld\n", err < 0 ? (long)err : stat.st_size);
	if (err < 0)
		return err;
	return (size_t) stat.st_size;
}