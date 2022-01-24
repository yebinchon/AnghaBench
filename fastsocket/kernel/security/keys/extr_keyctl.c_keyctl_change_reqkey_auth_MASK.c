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
struct key {int dummy; } ;
struct cred {int /*<<< orphan*/  request_key_auth; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct cred*) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct key *key)
{
	struct cred *new;

	new = FUNC3();
	if (!new)
		return -ENOMEM;

	FUNC2(new->request_key_auth);
	new->request_key_auth = FUNC1(key);

	return FUNC0(new);
}