#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smb_hdr {int /*<<< orphan*/  smb_buf_length; } ;
struct TYPE_3__ {int called_len; int calling_len; scalar_t__ scope2; scalar_t__ scope1; int /*<<< orphan*/  calling_name; int /*<<< orphan*/  called_name; } ;
struct TYPE_4__ {TYPE_1__ session_req; } ;
struct rfc1002_session_packet {TYPE_2__ trailer; } ;
struct TCP_Server_Info {scalar_t__* server_RFC1001_name; scalar_t__* workstation_RFC1001_name; } ;

/* Variables and functions */
 char* DEFAULT_CIFS_CALLED_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RFC1001_NAME_LEN_WITH_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rfc1002_session_packet*) ; 
 struct rfc1002_session_packet* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct TCP_Server_Info*,struct smb_hdr*,int) ; 

__attribute__((used)) static int
FUNC6(struct TCP_Server_Info *server)
{
	int rc = 0;
	/*
	 * some servers require RFC1001 sessinit before sending
	 * negprot - BB check reconnection in case where second
	 * sessinit is sent but no second negprot
	 */
	struct rfc1002_session_packet *ses_init_buf;
	struct smb_hdr *smb_buf;
	ses_init_buf = FUNC2(sizeof(struct rfc1002_session_packet),
			       GFP_KERNEL);
	if (ses_init_buf) {
		ses_init_buf->trailer.session_req.called_len = 32;

		if (server->server_RFC1001_name &&
		    server->server_RFC1001_name[0] != 0)
			FUNC4(ses_init_buf->trailer.
				      session_req.called_name,
				      server->server_RFC1001_name,
				      RFC1001_NAME_LEN_WITH_NULL);
		else
			FUNC4(ses_init_buf->trailer.
				      session_req.called_name,
				      DEFAULT_CIFS_CALLED_NAME,
				      RFC1001_NAME_LEN_WITH_NULL);

		ses_init_buf->trailer.session_req.calling_len = 32;

		/*
		 * calling name ends in null (byte 16) from old smb
		 * convention.
		 */
		if (server->workstation_RFC1001_name &&
		    server->workstation_RFC1001_name[0] != 0)
			FUNC4(ses_init_buf->trailer.
				      session_req.calling_name,
				      server->workstation_RFC1001_name,
				      RFC1001_NAME_LEN_WITH_NULL);
		else
			FUNC4(ses_init_buf->trailer.
				      session_req.calling_name,
				      "LINUX_CIFS_CLNT",
				      RFC1001_NAME_LEN_WITH_NULL);

		ses_init_buf->trailer.session_req.scope1 = 0;
		ses_init_buf->trailer.session_req.scope2 = 0;
		smb_buf = (struct smb_hdr *)ses_init_buf;

		/* sizeof RFC1002_SESSION_REQUEST with no scope */
		smb_buf->smb_buf_length = FUNC0(0x81000044);
		rc = FUNC5(server, smb_buf, 0x44);
		FUNC1(ses_init_buf);
		/*
		 * RFC1001 layer in at least one server
		 * requires very short break before negprot
		 * presumably because not expecting negprot
		 * to follow so fast.  This is a simple
		 * solution that works without
		 * complicating the code and causes no
		 * significant slowing down on mount
		 * for everyone else
		 */
		FUNC3(1);
	}
	/*
	 * else the negprot may still work without this
	 * even though malloc failed
	 */

	return rc;
}