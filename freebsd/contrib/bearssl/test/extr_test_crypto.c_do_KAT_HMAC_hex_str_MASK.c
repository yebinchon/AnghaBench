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
typedef  int /*<<< orphan*/  br_hash_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,unsigned char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(const br_hash_class *digest_class,
	const char *skey, const char *data, const char *href)
{
	unsigned char key[1024];

	FUNC0(digest_class, key, FUNC1(key, skey),
		data, FUNC2(data), href);
}