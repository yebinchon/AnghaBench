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
struct smb_vol {char* username; char* password; int /*<<< orphan*/  cred_uid; } ;
struct cifs_ses {int /*<<< orphan*/ * password; int /*<<< orphan*/ * user_name; int /*<<< orphan*/  cred_uid; TYPE_1__* server; } ;
struct TYPE_2__ {int secType; } ;

/* Variables and functions */
#define  Kerberos 128 
 int /*<<< orphan*/  MAX_PASSWORD_SIZE ; 
 int /*<<< orphan*/  MAX_USERNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cifs_ses *ses, struct smb_vol *vol)
{
	switch (ses->server->secType) {
	case Kerberos:
		if (vol->cred_uid != ses->cred_uid)
			return 0;
		break;
	default:
		/* anything else takes username/password */
		if (ses->user_name == NULL)
			return 0;
		if (FUNC1(ses->user_name, vol->username,
			    MAX_USERNAME_SIZE))
			return 0;
		if (FUNC0(vol->username) != 0 &&
		    ses->password != NULL &&
		    FUNC1(ses->password,
			    vol->password ? vol->password : "",
			    MAX_PASSWORD_SIZE))
			return 0;
	}
	return 1;
}