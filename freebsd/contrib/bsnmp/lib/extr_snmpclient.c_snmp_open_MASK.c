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
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {int fd; int trans; char* local_path; int /*<<< orphan*/  write_community; int /*<<< orphan*/  read_community; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  SNMP_TRANS_LOC_DGRAM 131 
#define  SNMP_TRANS_LOC_STREAM 130 
#define  SNMP_TRANS_UDP 129 
#define  SNMP_TRANS_UDP6 128 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SNDTIMEO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  sent_pdus ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 TYPE_1__ snmp_client ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC9(const char *host, const char *port, const char *readcomm,
    const char *writecomm)
{
	struct timeval tout;

	/* still open ? */
	if (snmp_client.fd != -1) {
		errno = EBUSY;
		FUNC5(&snmp_client, "%s", FUNC7(errno));
		return (-1);
	}

	/* copy community strings */
	if (readcomm != NULL)
		FUNC8(snmp_client.read_community, readcomm,
		    sizeof(snmp_client.read_community));
	if (writecomm != NULL)
		FUNC8(snmp_client.write_community, writecomm,
		    sizeof(snmp_client.write_community));

	switch (snmp_client.trans) {

	  case SNMP_TRANS_UDP:
	  case SNMP_TRANS_UDP6:
		if (FUNC3(host, port) != 0)
			return (-1);
		break;

	  case SNMP_TRANS_LOC_DGRAM:
	  case SNMP_TRANS_LOC_STREAM:
		if (FUNC2(host) != 0)
			return (-1);
		break;

	  default:
		FUNC5(&snmp_client, "bad transport mapping");
		return (-1);
	}
	tout.tv_sec = 0;
	tout.tv_usec = 0;
	if (FUNC6(snmp_client.fd, SOL_SOCKET, SO_SNDTIMEO,
	    &tout, sizeof(struct timeval)) == -1) {
		FUNC5(&snmp_client, "%s", FUNC7(errno));
		(void)FUNC1(snmp_client.fd);
		snmp_client.fd = -1;
		if (snmp_client.local_path[0] != '\0')
			(void)FUNC4(snmp_client.local_path);
		return (-1);
	}

	/* initialize list */
	FUNC0(&sent_pdus);

	return (0);
}