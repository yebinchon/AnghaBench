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
typedef  int /*<<< orphan*/  wchar_t ;
struct nls_table {int dummy; } ;
struct cifs_ses {int serverOS; int serverNOS; int serverDomain; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 void* FUNC2 (char*,int,int,struct nls_table const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(char **pbcc_area, int bleft, struct cifs_ses *ses,
		      const struct nls_table *nls_cp)
{
	int len;
	char *data = *pbcc_area;

	FUNC1(1, "bleft %d", bleft);

	FUNC3(ses->serverOS);
	ses->serverOS = FUNC2(data, bleft, true, nls_cp);
	FUNC1(1, "serverOS=%s", ses->serverOS);
	len = (FUNC0((wchar_t *) data, bleft / 2) * 2) + 2;
	data += len;
	bleft -= len;
	if (bleft <= 0)
		return;

	FUNC3(ses->serverNOS);
	ses->serverNOS = FUNC2(data, bleft, true, nls_cp);
	FUNC1(1, "serverNOS=%s", ses->serverNOS);
	len = (FUNC0((wchar_t *) data, bleft / 2) * 2) + 2;
	data += len;
	bleft -= len;
	if (bleft <= 0)
		return;

	FUNC3(ses->serverDomain);
	ses->serverDomain = FUNC2(data, bleft, true, nls_cp);
	FUNC1(1, "serverDomain=%s", ses->serverDomain);

	return;
}