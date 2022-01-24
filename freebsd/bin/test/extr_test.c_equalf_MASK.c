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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,struct stat*) ; 

__attribute__((used)) static int
FUNC1 (const char *f1, const char *f2)
{
	struct stat b1, b2;

	return (FUNC0 (f1, &b1) == 0 &&
		FUNC0 (f2, &b2) == 0 &&
		b1.st_dev == b2.st_dev &&
		b1.st_ino == b2.st_ino);
}