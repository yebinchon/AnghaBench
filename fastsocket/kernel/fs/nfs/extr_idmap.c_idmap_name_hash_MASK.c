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
struct idmap_hashtable {struct idmap_hashent* h_entries; } ;
struct idmap_hashent {int dummy; } ;

/* Variables and functions */
 size_t IDMAP_HASH_SZ ; 
 size_t FUNC0 (char const*,size_t) ; 

__attribute__((used)) static inline struct idmap_hashent *
FUNC1(struct idmap_hashtable* h, const char *name, size_t len)
{
	if (h->h_entries == NULL)
		return NULL;
	return &h->h_entries[FUNC0(name, len) % IDMAP_HASH_SZ];
}