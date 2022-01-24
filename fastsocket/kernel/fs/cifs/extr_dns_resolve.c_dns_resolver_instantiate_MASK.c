#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* data; } ;
struct TYPE_4__ {size_t* x; } ;
struct key {TYPE_1__ payload; TYPE_2__ type_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void const*,size_t) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,void const*,size_t) ; 

__attribute__((used)) static int
FUNC3(struct key *key, const void *data,
		size_t datalen)
{
	int rc = 0;
	char *ip;

	/* make sure this looks like an address */
	if (!FUNC0(data, datalen))
		return -EINVAL;

	ip = FUNC1(datalen + 1, GFP_KERNEL);
	if (!ip)
		return -ENOMEM;

	FUNC2(ip, data, datalen);
	ip[datalen] = '\0';

	key->type_data.x[0] = datalen;
	key->payload.data = ip;

	return rc;
}