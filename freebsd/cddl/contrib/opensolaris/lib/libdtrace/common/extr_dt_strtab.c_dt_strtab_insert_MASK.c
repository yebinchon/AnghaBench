#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ulong_t ;
typedef  int ssize_t ;
struct TYPE_8__ {size_t str_hashsz; size_t str_size; TYPE_2__** str_hash; int /*<<< orphan*/  str_nstrs; scalar_t__ str_nbufs; int /*<<< orphan*/  str_ptr; } ;
typedef  TYPE_1__ dt_strtab_t ;
struct TYPE_9__ {size_t str_off; size_t str_len; struct TYPE_9__* str_next; scalar_t__ str_buf; int /*<<< orphan*/  str_data; } ;
typedef  TYPE_2__ dt_strhash_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char const*,size_t) ; 
 size_t FUNC1 (char const*,size_t*) ; 
 int FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int) ; 

ssize_t
FUNC5(dt_strtab_t *sp, const char *str)
{
	dt_strhash_t *hp;
	size_t len;
	ssize_t off;
	ulong_t h;

	if ((off = FUNC2(sp, str)) != -1)
		return (off);

	h = FUNC1(str, &len) % sp->str_hashsz;

	/*
	 * Create a new hash bucket, initialize it, and insert it at the front
	 * of the hash chain for the appropriate bucket.
	 */
	if ((hp = FUNC4(sizeof (dt_strhash_t))) == NULL)
		return (-1L);

	hp->str_data = sp->str_ptr;
	hp->str_buf = sp->str_nbufs - 1;
	hp->str_off = sp->str_size;
	hp->str_len = len;
	hp->str_next = sp->str_hash[h];

	/*
	 * Now copy the string data into our buffer list, and then update
	 * the global counts of strings and bytes.  Return str's byte offset.
	 */
	if (FUNC0(sp, str, len + 1) == -1) {
		FUNC3(hp);
		return (-1L);
	}

	sp->str_nstrs++;
	sp->str_size += len + 1;
	sp->str_hash[h] = hp;

	return (hp->str_off);
}