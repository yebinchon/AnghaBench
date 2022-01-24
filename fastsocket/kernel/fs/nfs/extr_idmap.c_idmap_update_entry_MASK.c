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
struct idmap_hashent {char* ih_name; size_t ih_namelen; scalar_t__ ih_expires; int /*<<< orphan*/  ih_id; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 scalar_t__ nfs_idmap_cache_timeout ; 

__attribute__((used)) static void
FUNC3(struct idmap_hashent *he, const char *name,
		size_t namelen, __u32 id)
{
	char *str = FUNC1(namelen + 1, GFP_KERNEL);
	if (str == NULL)
		return;
	FUNC0(he->ih_name);
	he->ih_id = id;
	FUNC2(str, name, namelen);
	str[namelen] = '\0';
	he->ih_name = str;
	he->ih_namelen = namelen;
	he->ih_expires = jiffies + nfs_idmap_cache_timeout;
}