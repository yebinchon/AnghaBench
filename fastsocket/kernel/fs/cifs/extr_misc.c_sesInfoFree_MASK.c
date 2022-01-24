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
struct cifs_ses {struct cifs_ses* domainName; struct cifs_ses* user_name; struct cifs_ses* password; struct cifs_ses* serverNOS; struct cifs_ses* serverDomain; struct cifs_ses* serverOS; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cifs_ses*) ; 
 int /*<<< orphan*/  FUNC3 (struct cifs_ses*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sesInfoAllocCount ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_ses*) ; 

void
FUNC5(struct cifs_ses *buf_to_free)
{
	if (buf_to_free == NULL) {
		FUNC1(1, "Null buffer passed to sesInfoFree");
		return;
	}

	FUNC0(&sesInfoAllocCount);
	FUNC2(buf_to_free->serverOS);
	FUNC2(buf_to_free->serverDomain);
	FUNC2(buf_to_free->serverNOS);
	if (buf_to_free->password) {
		FUNC3(buf_to_free->password, 0, FUNC4(buf_to_free->password));
		FUNC2(buf_to_free->password);
	}
	FUNC2(buf_to_free->user_name);
	FUNC2(buf_to_free->domainName);
	FUNC2(buf_to_free);
}