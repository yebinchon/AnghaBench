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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(void)
{
	FUNC0(stderr,
"usage: brssl twrch [ options ]\n");
	FUNC0(stderr,
"options:\n");
	FUNC0(stderr,
"   -trace          dump all packets on stderr\n");
	FUNC0(stderr,
"   -v              verbose error messages on stderr\n");
	FUNC0(stderr,
"   -server         act as an SSL server\n");
	FUNC0(stderr,
"   -client         act as an SSL client\n");
	FUNC0(stderr,
"   -sni name       use specified name for SNI\n");
	FUNC0(stderr,
"   -mono           use monodirectional buffering\n");
	FUNC0(stderr,
"   -buf length     set the I/O buffer length (in bytes)\n");
	FUNC0(stderr,
"   -cache length   set the session cache storage length (in bytes)\n");
	FUNC0(stderr,
"   -cert fname     read certificate chain from file 'fname'\n");
	FUNC0(stderr,
"   -key fname      read private key from file 'fname'\n");
	FUNC0(stderr,
"   -CA file        add trust anchors from 'file' (for peer auth)\n");
	FUNC0(stderr,
"   -anon_ok        request but do not require a client certificate\n");
	FUNC0(stderr,
"   -nostaticecdh   prohibit full-static ECDH (client only)\n");
	FUNC0(stderr,
"   -list           list supported names (protocols, algorithms...)\n");
	FUNC0(stderr,
"   -vmin name      set minimum supported version (default: TLS-1.0)\n");
	FUNC0(stderr,
"   -vmax name      set maximum supported version (default: TLS-1.2)\n");
	FUNC0(stderr,
"   -cs names       set list of supported cipher suites (comma-separated)\n");
	FUNC0(stderr,
"   -hf names       add support for some hash functions (comma-separated)\n");
	FUNC0(stderr,
"   -minhello len   set minimum ClientHello length (in bytes)\n");
	FUNC0(stderr,
"   -serverpref     enforce server's preferences for cipher suites\n");
	FUNC0(stderr,
"   -noreneg        prohibit renegotiations\n");
	FUNC0(stderr,
"   -alpn name      add protocol name to list of protocols (ALPN extension)\n");
	FUNC0(stderr,
"   -strictalpn     fail on ALPN mismatch\n");
}