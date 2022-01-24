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
struct seq_file {int dummy; } ;
struct TCP_Server_Info {int secType; int sec_mode; } ;

/* Variables and functions */
#define  Kerberos 132 
#define  LANMAN 131 
#define  NTLM 130 
#define  NTLMv2 129 
#define  RawNTLMSSP 128 
 int SECMODE_SIGN_ENABLED ; 
 int SECMODE_SIGN_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*) ; 

__attribute__((used)) static void
FUNC1(struct seq_file *s, struct TCP_Server_Info *server)
{
	FUNC0(s, ",sec=");

	switch (server->secType) {
	case LANMAN:
		FUNC0(s, "lanman");
		break;
	case NTLMv2:
		FUNC0(s, "ntlmv2");
		break;
	case NTLM:
		FUNC0(s, "ntlm");
		break;
	case Kerberos:
		FUNC0(s, "krb5");
		break;
	case RawNTLMSSP:
		FUNC0(s, "ntlmssp");
		break;
	default:
		/* shouldn't ever happen */
		FUNC0(s, "unknown");
		break;
	}

	if (server->sec_mode & (SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED))
		FUNC0(s, "i");
}