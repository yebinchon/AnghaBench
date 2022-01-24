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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  vec; } ;
struct TYPE_4__ {TYPE_1__ sp; } ;
struct dccp_feat_entry {TYPE_2__ val; int /*<<< orphan*/  feat_num; } ;

/* Variables and functions */
 scalar_t__ FEAT_SP ; 
 scalar_t__ FEAT_UNKNOWN ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dccp_feat_entry*) ; 
 struct dccp_feat_entry* FUNC4 (struct dccp_feat_entry const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dccp_feat_entry *
	      FUNC5(struct dccp_feat_entry const *original)
{
	struct dccp_feat_entry *new;
	u8 type = FUNC1(original->feat_num);

	if (type == FEAT_UNKNOWN)
		return NULL;

	new = FUNC4(original, sizeof(struct dccp_feat_entry), FUNC2());
	if (new == NULL)
		return NULL;

	if (type == FEAT_SP && FUNC0(&new->val,
						      original->val.sp.vec,
						      original->val.sp.len)) {
		FUNC3(new);
		return NULL;
	}
	return new;
}