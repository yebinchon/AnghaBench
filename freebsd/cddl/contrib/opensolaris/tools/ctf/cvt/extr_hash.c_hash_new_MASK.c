#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_4__ {int h_nbuckets; int (* h_hashfn ) (int,void*) ;int (* h_cmp ) (void*,void*) ;int /*<<< orphan*/  h_buckets; } ;
typedef  TYPE_1__ hash_t ;

/* Variables and functions */
 int FUNC0 (void*,void*) ; 
 int FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int) ; 

hash_t *
FUNC4(int nbuckets, int (*hashfn)(int, void *), int (*cmp)(void *, void *))
{
	hash_t *hash;

	hash = FUNC3(sizeof (hash_t));
	hash->h_buckets = FUNC2(sizeof (list_t *) * nbuckets);
	hash->h_nbuckets = nbuckets;
	hash->h_hashfn = hashfn ? hashfn : hash_def_hash;
	hash->h_cmp = cmp ? cmp : hash_def_cmp;

	return (hash);
}