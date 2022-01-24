#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list_entry {struct list_entry* m_next; } ;
struct TYPE_3__ {int m_size; scalar_t__ m_begin; } ;
typedef  TYPE_1__ atf_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct list_entry*) ; 

void
FUNC2(atf_list_t *l)
{
    struct list_entry *le;
    size_t freed;

    le = (struct list_entry *)l->m_begin;
    freed = 0;
    while (le != NULL) {
        struct list_entry *lenext;

        lenext = le->m_next;
        FUNC1(le);
        le = lenext;

        freed++;
    }
    FUNC0(freed == l->m_size + 2);
}