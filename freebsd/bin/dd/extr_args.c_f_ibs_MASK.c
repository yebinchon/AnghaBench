#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uintmax_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {size_t dbsz; } ;

/* Variables and functions */
 int C_BS ; 
 int SSIZE_MAX ; 
 int ddflags ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 TYPE_1__ in ; 

__attribute__((used)) static void
FUNC2(char *arg)
{
	uintmax_t res;

	if (!(ddflags & C_BS)) {
		res = FUNC1(arg);
		if (res < 1 || res > SSIZE_MAX)
			FUNC0(1, "ibs must be between 1 and %zd",
			    (ssize_t)SSIZE_MAX);
		in.dbsz = (size_t)res;
	}
}