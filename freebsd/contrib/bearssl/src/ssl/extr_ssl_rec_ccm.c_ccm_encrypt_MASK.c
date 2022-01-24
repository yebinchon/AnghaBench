#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vtable; } ;
struct TYPE_5__ {unsigned char* iv; int /*<<< orphan*/  tag_len; TYPE_1__ bc; int /*<<< orphan*/  seq; } ;
typedef  TYPE_2__ br_sslrec_ccm_context ;
typedef  int /*<<< orphan*/  br_ccm_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static unsigned char *
FUNC9(br_sslrec_ccm_context *cc,
	int record_type, unsigned version, void *data, size_t *data_len)
{
	br_ccm_context zc;
	unsigned char *buf;
	unsigned char nonce[12], header[13];
	size_t len;

	buf = (unsigned char *)data;
	len = *data_len;

	/*
	 * Make nonce; the explicit part is an encoding of the sequence
	 * number.
	 */
	FUNC8(nonce, cc->iv, sizeof cc->iv);
	FUNC7(nonce + 4, cc->seq);

	/*
	 * Assemble synthetic header for the AAD.
	 */
	FUNC7(header, cc->seq ++);
	header[8] = (unsigned char)record_type;
	FUNC6(header + 9, version);
	FUNC6(header + 11, len);

	/*
	 * Perform CCM encryption.
	 */
	FUNC3(&zc, &cc->bc.vtable);
	FUNC4(&zc, nonce, sizeof nonce, sizeof header, len, cc->tag_len);
	FUNC0(&zc, header, sizeof header);
	FUNC1(&zc);
	FUNC5(&zc, 1, buf, len);
	FUNC2(&zc, buf + len);

	/*
	 * Assemble header and adjust pointer/length.
	 */
	len += 8 + cc->tag_len;
	buf -= 13;
	FUNC8(buf + 5, nonce + 4, 8);
	buf[0] = (unsigned char)record_type;
	FUNC6(buf + 1, version);
	FUNC6(buf + 3, len);
	*data_len = len + 5;
	return buf;
}