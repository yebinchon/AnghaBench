#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_key_auth {int /*<<< orphan*/ * cred; } ;
struct TYPE_2__ {struct request_key_auth* data; } ;
struct key {int /*<<< orphan*/  serial; TYPE_1__ payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct key *key)
{
	struct request_key_auth *rka = key->payload.data;

	FUNC0("{%d}", key->serial);

	if (rka->cred) {
		FUNC1(rka->cred);
		rka->cred = NULL;
	}
}