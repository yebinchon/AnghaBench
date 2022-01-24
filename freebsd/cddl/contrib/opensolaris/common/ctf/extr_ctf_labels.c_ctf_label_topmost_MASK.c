#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
struct TYPE_3__ {int /*<<< orphan*/  ctl_label; } ;
typedef  TYPE_1__ ctf_lblent_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 int /*<<< orphan*/  ECTF_CORRUPT ; 
 int /*<<< orphan*/  ECTF_NOLABELDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const**,scalar_t__*) ; 

const char *
FUNC3(ctf_file_t *fp)
{
	const ctf_lblent_t *ctlp;
	const char *s;
	uint_t num_labels;

	if (FUNC2(fp, &ctlp, &num_labels) == CTF_ERR)
		return (NULL); /* errno is set */

	if (num_labels == 0) {
		(void) FUNC0(fp, ECTF_NOLABELDATA);
		return (NULL);
	}

	if ((s = FUNC1(fp, (ctlp + num_labels - 1)->ctl_label)) == NULL)
		(void) FUNC0(fp, ECTF_CORRUPT);

	return (s);
}