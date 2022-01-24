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
struct TYPE_5__ {int tag_len; void* iv; TYPE_1__ bc; int /*<<< orphan*/  seq; } ;
typedef  TYPE_2__ br_sslrec_ccm_context ;
typedef  int /*<<< orphan*/  br_ccm_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,void*,int) ; 

__attribute__((used)) static unsigned char *
FUNC9(br_sslrec_ccm_context *cc,
	int record_type, unsigned version, void *data, size_t *data_len)
{
	br_ccm_context zc;
	unsigned char *buf;
	unsigned char nonce[12], header[13];
	size_t len;

	buf = (unsigned char *)data + 8;
	len = *data_len - (8 + cc->tag_len);

	/*
	 * Make nonce (implicit + explicit parts).
	 */
	FUNC8(nonce, cc->iv, sizeof cc->iv);
	FUNC8(nonce + 4, data, 8);

	/*
	 * Assemble synthetic header for the AAD.
	 */
	FUNC7(header, cc->seq ++);
	header[8] = (unsigned char)record_type;
	FUNC6(header + 9, version);
	FUNC6(header + 11, len);

	/*
	 * Perform CCM decryption.
	 */
	FUNC3(&zc, &cc->bc.vtable);
	FUNC4(&zc, nonce, sizeof nonce, sizeof header, len, cc->tag_len);
	FUNC0(&zc, header, sizeof header);
	FUNC2(&zc);
	FUNC5(&zc, 0, buf, len);
	if (!FUNC1(&zc, buf + len)) {
		return NULL;
	}
	*data_len = len;
	return buf;
}