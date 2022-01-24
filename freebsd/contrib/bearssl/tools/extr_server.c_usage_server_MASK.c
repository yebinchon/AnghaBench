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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr,
"usage: brssl server [ options ]\n");
	FUNC1(stderr,
"options:\n");
	FUNC1(stderr,
"   -q              suppress verbose messages\n");
	FUNC1(stderr,
"   -trace          activate extra debug messages (dump of all packets)\n");
	FUNC1(stderr,
"   -b name         bind to a specific address or host name\n");
	FUNC1(stderr,
"   -p port         bind to a specific port (default: 4433)\n");
	FUNC1(stderr,
"   -mono           use monodirectional buffering\n");
	FUNC1(stderr,
"   -buf length     set the I/O buffer length (in bytes)\n");
	FUNC1(stderr,
"   -cache length   set the session cache storage length (in bytes)\n");
	FUNC1(stderr,
"   -cert fname     read certificate chain from file 'fname'\n");
	FUNC1(stderr,
"   -key fname      read private key from file 'fname'\n");
	FUNC1(stderr,
"   -CA file        add trust anchors from 'file' (for client auth)\n");
	FUNC1(stderr,
"   -anon_ok        request but do not require a client certificate\n");
	FUNC1(stderr,
"   -list           list supported names (protocols, algorithms...)\n");
	FUNC1(stderr,
"   -vmin name      set minimum supported version (default: TLS-1.0)\n");
	FUNC1(stderr,
"   -vmax name      set maximum supported version (default: TLS-1.2)\n");
	FUNC1(stderr,
"   -cs names       set list of supported cipher suites (comma-separated)\n");
	FUNC1(stderr,
"   -hf names       add support for some hash functions (comma-separated)\n");
	FUNC1(stderr,
"   -cbhash         test hashing in policy callback\n");
	FUNC1(stderr,
"   -serverpref     enforce server's preferences for cipher suites\n");
	FUNC1(stderr,
"   -noreneg        prohibit renegotiations\n");
	FUNC1(stderr,
"   -alpn name      add protocol name to list of protocols (ALPN extension)\n");
	FUNC1(stderr,
"   -strictalpn     fail on ALPN mismatch\n");
	FUNC0(EXIT_FAILURE);
}