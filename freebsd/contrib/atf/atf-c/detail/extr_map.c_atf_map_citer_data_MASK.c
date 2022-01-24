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
struct map_entry {void const* m_value; } ;
struct TYPE_3__ {struct map_entry* m_entry; } ;
typedef  TYPE_1__ atf_map_citer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

const void *
FUNC1(const atf_map_citer_t citer)
{
    const struct map_entry *me = citer.m_entry;
    FUNC0(me != NULL);
    return me->m_value;
}