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
struct md4_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const,struct md4_ctx*) ; 

__attribute__((used)) static int FUNC1(const char *file, unsigned long len,
			struct md4_ctx *md)
{
	unsigned long i;

	FUNC0(file[0], md);
	for (i = 1; i < len; i++) {
		FUNC0(file[i], md);
		if (file[i] == '"' && file[i-1] != '\\')
			break;
	}
	return i;
}