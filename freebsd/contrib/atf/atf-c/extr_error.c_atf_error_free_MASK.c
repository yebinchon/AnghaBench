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
typedef  TYPE_1__* atf_error_t ;
struct TYPE_4__ {int m_free; struct TYPE_4__* m_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int error_on_flight ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(atf_error_t err)
{
    bool freeit;

    FUNC0(error_on_flight);
    FUNC0(err != NULL);

    freeit = err->m_free;

    if (err->m_data != NULL)
        FUNC1(err->m_data);

    if (freeit)
        FUNC1(err);

    error_on_flight = false;
}