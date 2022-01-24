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
"usage: brssl skey [ options ] file...\n");
	FUNC0(stderr,
"options:\n");
	FUNC0(stderr,
"   -q             suppress verbose messages\n");
	FUNC0(stderr,
"   -text          print private key details (human-readable)\n");
	FUNC0(stderr,
"   -C             print private key details (C code)\n");
	FUNC0(stderr,
"   -rawder file   save private key in 'file' (raw format, DER)\n");
	FUNC0(stderr,
"   -rawpem file   save private key in 'file' (raw format, PEM)\n");
	FUNC0(stderr,
"   -pk8der file   save private key in 'file' (PKCS#8 format, DER)\n");
	FUNC0(stderr,
"   -pk8pem file   save private key in 'file' (PKCS#8 format, PEM)\n");
	FUNC0(stderr,
"   -gen spec      generate a new key using the provided key specification\n");
	FUNC0(stderr,
"   -list          list known elliptic curve names\n");
	FUNC0(stderr,
"Key specification begins with a key type, followed by optional parameters\n");
	FUNC0(stderr,
"that depend on the key type, separated by colon characters:\n");
	FUNC0(stderr,
"   rsa[:size[:pubexep]]   RSA key (defaults: size = 2048, pubexp = 3)\n");
	FUNC0(stderr,
"   ec[:curvename]         EC key (default curve: secp256r1)\n");
}