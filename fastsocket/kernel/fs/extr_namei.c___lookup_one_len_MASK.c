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
struct qstr {char const* name; int len; int /*<<< orphan*/  hash; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 (unsigned int,unsigned long) ; 

__attribute__((used)) static int FUNC3(const char *name, struct qstr *this,
		struct dentry *base, int len)
{
	unsigned long hash;
	unsigned int c;

	this->name = name;
	this->len = len;
	if (!len)
		return -EACCES;

	hash = FUNC1();
	while (len--) {
		c = *(const unsigned char *)name++;
		if (c == '/' || c == '\0')
			return -EACCES;
		hash = FUNC2(c, hash);
	}
	this->hash = FUNC0(hash);
	return 0;
}