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
struct key_construction {TYPE_1__* authkey; TYPE_1__* key; } ;
struct TYPE_5__ {int /*<<< orphan*/  serial; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  key_negative_timeout ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct key_construction*) ; 

void FUNC5(struct key_construction *cons, int error)
{
	FUNC0("{%d,%d},%d", cons->key->serial, cons->authkey->serial, error);

	if (error < 0)
		FUNC1(cons->key, key_negative_timeout, NULL,
				    cons->authkey);
	else
		FUNC3(cons->authkey);

	FUNC2(cons->key);
	FUNC2(cons->authkey);
	FUNC4(cons);
}