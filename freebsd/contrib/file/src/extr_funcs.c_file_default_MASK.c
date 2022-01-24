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
struct magic_set {int flags; } ;

/* Variables and functions */
 int MAGIC_APPLE ; 
 int MAGIC_EXTENSION ; 
 int MAGIC_MIME ; 
 int MAGIC_MIME_TYPE ; 
 int FUNC0 (struct magic_set*,char*,...) ; 

int
FUNC1(struct magic_set *ms, size_t nb)
{
	if (ms->flags & MAGIC_MIME) {
		if ((ms->flags & MAGIC_MIME_TYPE) &&
		    FUNC0(ms, "application/%s",
			nb ? "octet-stream" : "x-empty") == -1)
			return -1;
		return 1;
	}
	if (ms->flags & MAGIC_APPLE) {
		if (FUNC0(ms, "UNKNUNKN") == -1)
			return -1;
		return 1;
	}
	if (ms->flags & MAGIC_EXTENSION) {
		if (FUNC0(ms, "???") == -1)
			return -1;
		return 1;
	}
	return 0;
}