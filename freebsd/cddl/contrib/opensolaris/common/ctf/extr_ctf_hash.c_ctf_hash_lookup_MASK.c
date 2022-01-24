#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ushort_t ;
typedef  size_t ulong_t ;
struct TYPE_8__ {char* cts_strs; } ;
typedef  TYPE_1__ ctf_strs_t ;
struct TYPE_9__ {size_t h_next; int /*<<< orphan*/  h_name; } ;
typedef  TYPE_2__ ctf_helem_t ;
struct TYPE_10__ {size_t h_nbuckets; size_t* h_buckets; TYPE_2__* h_chains; } ;
typedef  TYPE_3__ ctf_hash_t ;
struct TYPE_11__ {TYPE_1__* ctf_str; } ;
typedef  TYPE_4__ ctf_file_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char const*,size_t) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 

ctf_helem_t *
FUNC4(ctf_hash_t *hp, ctf_file_t *fp, const char *key, size_t len)
{
	ctf_helem_t *hep;
	ctf_strs_t *ctsp;
	const char *str;
	ushort_t i;

	ulong_t h = FUNC2(key, len) % hp->h_nbuckets;

	for (i = hp->h_buckets[h]; i != 0; i = hep->h_next) {
		hep = &hp->h_chains[i];
		ctsp = &fp->ctf_str[FUNC1(hep->h_name)];
		str = ctsp->cts_strs + FUNC0(hep->h_name);

		if (FUNC3(key, str, len) == 0 && str[len] == '\0')
			return (hep);
	}

	return (NULL);
}