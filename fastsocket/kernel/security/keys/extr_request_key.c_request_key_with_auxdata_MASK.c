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
struct key_type {int dummy; } ;
struct key {int dummy; } ;

/* Variables and functions */
 struct key* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_IN_QUOTA ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 struct key* FUNC3 (struct key_type*,char const*,void const*,size_t,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct key*,int) ; 

struct key *FUNC5(struct key_type *type,
				     const char *description,
				     const void *callout_info,
				     size_t callout_len,
				     void *aux)
{
	struct key *key;
	int ret;

	key = FUNC3(type, description, callout_info, callout_len,
				   aux, NULL, KEY_ALLOC_IN_QUOTA);
	if (!FUNC1(key)) {
		ret = FUNC4(key, false);
		if (ret < 0) {
			FUNC2(key);
			return FUNC0(ret);
		}
	}
	return key;
}