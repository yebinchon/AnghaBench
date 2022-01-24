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
typedef  scalar_t__ time_t ;
struct key {scalar_t__ expiry; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_FLAG_DEAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct key *key, time_t limit)
{
	return FUNC0(KEY_FLAG_DEAD, &key->flags) ||
		(key->expiry > 0 && key->expiry <= limit);
}