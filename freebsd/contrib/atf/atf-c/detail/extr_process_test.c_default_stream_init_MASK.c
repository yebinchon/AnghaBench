#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * m_sb_ptr; } ;
struct inherit_stream {TYPE_1__ m_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static
void
FUNC1(void *v)
{
    struct inherit_stream *s = v;

    FUNC0(v);
    s->m_base.m_sb_ptr = NULL;
}