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
struct request_key_auth {int dummy; } ;
struct TYPE_2__ {struct request_key_auth* data; } ;
struct key {TYPE_1__ payload; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(struct key *key,
					const void *data,
					size_t datalen)
{
	key->payload.data = (struct request_key_auth *) data;
	return 0;
}