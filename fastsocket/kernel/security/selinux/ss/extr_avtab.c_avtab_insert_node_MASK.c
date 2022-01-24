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
struct avtab_datum {int dummy; } ;
struct avtab_key {int dummy; } ;
struct avtab_node {struct avtab_node* next; struct avtab_datum datum; struct avtab_key key; } ;
struct avtab {int /*<<< orphan*/  nel; struct avtab_node** htable; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  avtab_node_cachep ; 
 struct avtab_node* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct avtab_node*
FUNC1(struct avtab *h, int hvalue,
		  struct avtab_node *prev, struct avtab_node *cur,
		  struct avtab_key *key, struct avtab_datum *datum)
{
	struct avtab_node *newnode;
	newnode = FUNC0(avtab_node_cachep, GFP_KERNEL);
	if (newnode == NULL)
		return NULL;
	newnode->key = *key;
	newnode->datum = *datum;
	if (prev) {
		newnode->next = prev->next;
		prev->next = newnode;
	} else {
		newnode->next = h->htable[hvalue];
		h->htable[hvalue] = newnode;
	}

	h->nel++;
	return newnode;
}