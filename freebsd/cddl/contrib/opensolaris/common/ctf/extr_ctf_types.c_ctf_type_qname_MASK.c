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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t,char const*) ; 

char *
FUNC1(ctf_file_t *fp, ctf_id_t type, char *buf, size_t len,
    const char *qname)
{
	ssize_t rv = FUNC0(fp, type, buf, len, qname);
	return (rv >= 0 && rv < len ? buf : NULL);
}