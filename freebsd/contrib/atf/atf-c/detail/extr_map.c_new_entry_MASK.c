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
struct map_entry {int m_managed; void* m_value; int /*<<< orphan*/ * m_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct map_entry*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

__attribute__((used)) static
struct map_entry *
FUNC3(const char *key, void *value, bool managed)
{
    struct map_entry *me;

    me = (struct map_entry *)FUNC1(sizeof(*me));
    if (me != NULL) {
        me->m_key = FUNC2(key);
        if (me->m_key == NULL) {
            FUNC0(me);
            me = NULL;
        } else {
            me->m_value = value;
            me->m_managed = managed;
        }
    }

    return me;
}