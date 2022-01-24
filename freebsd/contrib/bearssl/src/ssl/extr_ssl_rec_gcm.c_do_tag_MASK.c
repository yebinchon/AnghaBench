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
typedef  int uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  h; int /*<<< orphan*/  (* gh ) (void*,int /*<<< orphan*/ ,unsigned char*,int) ;int /*<<< orphan*/  seq; } ;
typedef  TYPE_1__ br_sslrec_gcm_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static void
FUNC6(br_sslrec_gcm_context *cc,
	int record_type, unsigned version,
	void *data, size_t len, void *tag)
{
	unsigned char header[13];
	unsigned char footer[16];

	/*
	 * Compute authentication tag. Three elements must be injected in
	 * sequence, each possibly 0-padded to reach a length multiple
	 * of the block size: the 13-byte header (sequence number, record
	 * type, protocol version, record length), the cipher text, and
	 * the word containing the encodings of the bit lengths of the two
	 * other elements.
	 */
	FUNC1(header, cc->seq ++);
	header[8] = (unsigned char)record_type;
	FUNC0(header + 9, version);
	FUNC0(header + 11, len);
	FUNC1(footer, (uint64_t)(sizeof header) << 3);
	FUNC1(footer + 8, (uint64_t)len << 3);
	FUNC2(tag, 0, 16);
	cc->gh(tag, cc->h, header, sizeof header);
	cc->gh(tag, cc->h, data, len);
	cc->gh(tag, cc->h, footer, sizeof footer);
}