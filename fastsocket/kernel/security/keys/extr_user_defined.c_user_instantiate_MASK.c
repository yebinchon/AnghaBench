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
struct user_key_payload {size_t datalen; int /*<<< orphan*/  data; } ;
struct key {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct key*,size_t) ; 
 struct user_key_payload* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct key*,struct user_key_payload*) ; 

int FUNC4(struct key *key, const void *data, size_t datalen)
{
	struct user_key_payload *upayload;
	int ret;

	ret = -EINVAL;
	if (datalen <= 0 || datalen > 32767 || !data)
		goto error;

	ret = FUNC0(key, datalen);
	if (ret < 0)
		goto error;

	ret = -ENOMEM;
	upayload = FUNC1(sizeof(*upayload) + datalen, GFP_KERNEL);
	if (!upayload)
		goto error;

	/* attach the data */
	upayload->datalen = datalen;
	FUNC2(upayload->data, data, datalen);
	FUNC3(key, upayload);
	ret = 0;

error:
	return ret;
}