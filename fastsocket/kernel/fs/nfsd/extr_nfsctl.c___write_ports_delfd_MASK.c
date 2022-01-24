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
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SIMPLE_TRANSACTION_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfsd_serv ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static ssize_t FUNC3(char *buf)
{
	char *toclose;
	int len = 0;

	toclose = FUNC1(buf + 1, GFP_KERNEL);
	if (toclose == NULL)
		return -ENOMEM;

	if (nfsd_serv != NULL)
		len = FUNC2(nfsd_serv, buf,
					SIMPLE_TRANSACTION_LIMIT, toclose);
	FUNC0(toclose);
	return len;
}