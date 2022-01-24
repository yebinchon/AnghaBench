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
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(ctf_file_t *ctfp, ctf_id_t id, char *buf, size_t buflen)
{
	if (FUNC0(ctfp, id, buf, buflen) == NULL)
		(void) FUNC1(buf, buflen, "<%ld>", id);
}