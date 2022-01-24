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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  (* toupper_t ) (int /*<<< orphan*/  const) ;
struct qstr {int /*<<< orphan*/  hash; int /*<<< orphan*/  len; int /*<<< orphan*/ * name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static inline int
FUNC5(struct dentry *dentry, struct qstr *qstr, toupper_t toupper)
{
	const u8 *name = qstr->name;
	unsigned long hash;
	int i;

	i = FUNC0(qstr->name,qstr->len);
	if (i)
		return i;

	hash = FUNC2();
	i = FUNC3(qstr->len, 30u);
	for (; i > 0; name++, i--)
		hash = FUNC4(toupper(*name), hash);
	qstr->hash = FUNC1(hash);

	return 0;
}