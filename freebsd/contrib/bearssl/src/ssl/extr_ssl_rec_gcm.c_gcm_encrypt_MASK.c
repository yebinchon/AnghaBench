#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  seq; } ;
typedef  TYPE_1__ br_sslrec_gcm_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*,unsigned char*,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,unsigned int,unsigned char*,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned char *
FUNC5(br_sslrec_gcm_context *cc,
	int record_type, unsigned version, void *data, size_t *data_len)
{
	unsigned char *buf;
	size_t u, len;
	unsigned char tmp[16];

	buf = (unsigned char *)data;
	len = *data_len;
	FUNC4(tmp, 0, sizeof tmp);
	FUNC1(buf - 8, cc->seq);
	FUNC2(cc, buf - 8, buf, len, tmp);
	FUNC3(cc, record_type, version, buf, len, buf + len);
	for (u = 0; u < 16; u ++) {
		buf[len + u] ^= tmp[u];
	}
	len += 24;
	buf -= 13;
	buf[0] = (unsigned char)record_type;
	FUNC0(buf + 1, version);
	FUNC0(buf + 3, len);
	*data_len = len + 5;
	return buf;
}