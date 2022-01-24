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
struct qstr {int len; int /*<<< orphan*/  hash; int /*<<< orphan*/ * name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC4(struct dentry *dir, struct qstr *this)
{
	unsigned long hash;
	int i;

	hash = FUNC1();
	for (i=0; i < this->len ; i++)
		hash = FUNC2(FUNC3(this->name[i]), hash);
	this->hash = FUNC0(hash);
  
	return 0;
}