#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  link; } ;
struct key {TYPE_1__ type_data; scalar_t__ description; } ;
struct TYPE_6__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (scalar_t__) ; 
 TYPE_2__* keyring_name_hash ; 
 int /*<<< orphan*/  keyring_name_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct key *keyring)
{
	int bucket;

	if (keyring->description) {
		bucket = FUNC1(keyring->description);

		FUNC3(&keyring_name_lock);

		if (!keyring_name_hash[bucket].next)
			FUNC0(&keyring_name_hash[bucket]);

		FUNC2(&keyring->type_data.link,
			      &keyring_name_hash[bucket]);

		FUNC4(&keyring_name_lock);
	}
}