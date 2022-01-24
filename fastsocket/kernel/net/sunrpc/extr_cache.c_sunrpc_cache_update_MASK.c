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
struct cache_head {int /*<<< orphan*/  expiry_time; struct cache_head* next; int /*<<< orphan*/  flags; } ;
struct cache_detail {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  entries; int /*<<< orphan*/  (* update ) (struct cache_head*,struct cache_head*) ;struct cache_head** hash_table; int /*<<< orphan*/  (* init ) (struct cache_head*,struct cache_head*) ;struct cache_head* (* alloc ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEGATIVE ; 
 int /*<<< orphan*/  CACHE_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct cache_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_head*,struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_head*,struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_head*,struct cache_head*) ; 
 struct cache_head* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct cache_head*,struct cache_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct cache_head*,struct cache_head*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct cache_head *FUNC13(struct cache_detail *detail,
				       struct cache_head *new, struct cache_head *old, int hash)
{
	/* The 'old' entry is to be replaced by 'new'.
	 * If 'old' is not VALID, we update it directly,
	 * otherwise we need to replace it
	 */
	struct cache_head **head;
	struct cache_head *tmp;

	if (!FUNC10(CACHE_VALID, &old->flags)) {
		FUNC11(&detail->hash_lock);
		if (!FUNC10(CACHE_VALID, &old->flags)) {
			if (FUNC10(CACHE_NEGATIVE, &new->flags))
				FUNC5(CACHE_NEGATIVE, &old->flags);
			else
				detail->update(old, new);
			FUNC0(old, new->expiry_time);
			FUNC12(&detail->hash_lock);
			FUNC1(old, detail);
			return old;
		}
		FUNC12(&detail->hash_lock);
	}
	/* We need to insert a new entry */
	tmp = detail->alloc();
	if (!tmp) {
		FUNC4(old, detail);
		return NULL;
	}
	FUNC3(tmp);
	detail->init(tmp, old);
	head = &detail->hash_table[hash];

	FUNC11(&detail->hash_lock);
	if (FUNC10(CACHE_NEGATIVE, &new->flags))
		FUNC5(CACHE_NEGATIVE, &tmp->flags);
	else
		detail->update(tmp, new);
	tmp->next = *head;
	*head = tmp;
	detail->entries++;
	FUNC2(tmp);
	FUNC0(tmp, new->expiry_time);
	FUNC0(old, 0);
	FUNC12(&detail->hash_lock);
	FUNC1(tmp, detail);
	FUNC1(old, detail);
	FUNC4(old, detail);
	return tmp;
}