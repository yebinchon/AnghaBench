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
struct tomoyo_page_buffer {int dummy; } ;
struct path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TOMOYO_MAX_PATHNAME_LEN ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct path*,char*,int) ; 

char *FUNC4(struct path *path)
{
	char *buf = FUNC1(sizeof(struct tomoyo_page_buffer));

	FUNC0(sizeof(struct tomoyo_page_buffer)
		     <= TOMOYO_MAX_PATHNAME_LEN - 1);
	if (!buf)
		return NULL;
	if (FUNC3(path, buf,
				       TOMOYO_MAX_PATHNAME_LEN - 1) == 0)
		return buf;
	FUNC2(buf);
	return NULL;
}