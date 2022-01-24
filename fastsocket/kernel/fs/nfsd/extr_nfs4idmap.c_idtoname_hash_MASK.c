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
typedef  int uint32_t ;
struct ent {int id; scalar_t__ type; int /*<<< orphan*/  authname; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENT_HASHBITS ; 
 scalar_t__ IDMAP_TYPE_GROUP ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct ent *ent)
{
	uint32_t hash;

	hash = FUNC1(ent->authname, ENT_HASHBITS);
	hash = FUNC0(hash ^ ent->id, ENT_HASHBITS);

	/* Flip LSB for user/group */
	if (ent->type == IDMAP_TYPE_GROUP)
		hash ^= 1;

	return hash;
}