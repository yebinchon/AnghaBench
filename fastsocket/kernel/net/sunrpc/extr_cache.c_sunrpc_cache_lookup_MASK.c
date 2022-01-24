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
struct cache_head {struct cache_head* next; } ;
struct cache_detail {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  entries; scalar_t__ (* match ) (struct cache_head*,struct cache_head*) ;int /*<<< orphan*/  (* init ) (struct cache_head*,struct cache_head*) ;struct cache_head* (* alloc ) () ;struct cache_head** hash_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_head*) ; 
 scalar_t__ FUNC2 (struct cache_detail*,struct cache_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_head*,struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct cache_head*,struct cache_head*) ; 
 struct cache_head* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct cache_head*,struct cache_head*) ; 
 scalar_t__ FUNC9 (struct cache_head*,struct cache_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct cache_head *FUNC12(struct cache_detail *detail,
				       struct cache_head *key, int hash)
{
	struct cache_head **head,  **hp;
	struct cache_head *new = NULL, *freeme = NULL;

	head = &detail->hash_table[hash];

	FUNC4(&detail->hash_lock);

	for (hp=head; *hp != NULL ; hp = &(*hp)->next) {
		struct cache_head *tmp = *hp;
		if (detail->match(tmp, key)) {
			if (FUNC2(detail, tmp))
				/* This entry is expired, we will discard it. */
				break;
			FUNC0(tmp);
			FUNC5(&detail->hash_lock);
			return tmp;
		}
	}
	FUNC5(&detail->hash_lock);
	/* Didn't find anything, insert an empty entry */

	new = detail->alloc();
	if (!new)
		return NULL;
	/* must fully initialise 'new', else
	 * we might get lose if we need to
	 * cache_put it soon.
	 */
	FUNC1(new);
	detail->init(new, key);

	FUNC10(&detail->hash_lock);

	/* check if entry appeared while we slept */
	for (hp=head; *hp != NULL ; hp = &(*hp)->next) {
		struct cache_head *tmp = *hp;
		if (detail->match(tmp, key)) {
			if (FUNC2(detail, tmp)) {
				*hp = tmp->next;
				tmp->next = NULL;
				detail->entries --;
				freeme = tmp;
				break;
			}
			FUNC0(tmp);
			FUNC11(&detail->hash_lock);
			FUNC3(new, detail);
			return tmp;
		}
	}
	new->next = *head;
	*head = new;
	detail->entries++;
	FUNC0(new);
	FUNC11(&detail->hash_lock);

	if (freeme)
		FUNC3(freeme, detail);
	return new;
}