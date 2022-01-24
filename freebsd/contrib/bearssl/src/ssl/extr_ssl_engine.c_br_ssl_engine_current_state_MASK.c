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
typedef  int /*<<< orphan*/  br_ssl_engine_context ;

/* Variables and functions */
 int BR_SSL_CLOSED ; 
 unsigned int BR_SSL_RECVAPP ; 
 unsigned int BR_SSL_RECVREC ; 
 unsigned int BR_SSL_SENDAPP ; 
 unsigned int BR_SSL_SENDREC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,size_t*) ; 

unsigned
FUNC5(const br_ssl_engine_context *cc)
{
	unsigned s;
	size_t len;

	if (FUNC0(cc)) {
		return BR_SSL_CLOSED;
	}

	s = 0;
	if (FUNC4(cc, &len) != NULL) {
		s |= BR_SSL_SENDREC;
	}
	if (FUNC2(cc, &len) != NULL) {
		s |= BR_SSL_RECVREC;
	}
	if (FUNC3(cc, &len) != NULL) {
		s |= BR_SSL_SENDAPP;
	}
	if (FUNC1(cc, &len) != NULL) {
		s |= BR_SSL_RECVAPP;
	}
	return s;
}