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
struct map_entry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  m_listiter; struct map_entry* m_entry; } ;
typedef  TYPE_1__ atf_map_iter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

atf_map_iter_t
FUNC2(const atf_map_iter_t iter)
{
    atf_map_iter_t newiter;

    newiter = iter;
    newiter.m_listiter = FUNC1(iter.m_listiter);
    newiter.m_entry = ((struct map_entry *)
                       FUNC0(newiter.m_listiter));

    return newiter;
}