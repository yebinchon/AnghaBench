#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* first_child; TYPE_2__* attr; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ apr_xml_elem ;
struct TYPE_6__ {int /*<<< orphan*/  value; int /*<<< orphan*/  name; struct TYPE_6__* next; } ;
typedef  TYPE_2__ apr_xml_attr ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(abts_case *tc, apr_xml_elem *e, int level)
{
    apr_xml_attr *a;
    apr_xml_elem *ec;

    if (level == 0) {
        FUNC1(tc, "mary", e->name);
    } else {
        FUNC1(tc, "hmm", e->name);
    }

    if (e->attr) {
        a = e->attr;
        FUNC0(tc, a);
        FUNC1(tc, "for", a->name);
        FUNC1(tc, "dinner <>=", a->value);
        a = a->next;
        FUNC0(tc, a);
        FUNC1(tc, "roast", a->name);
        FUNC1(tc, "lamb", a->value);
    }
    if (e->first_child) {
        ec = e->first_child;
        while (ec) {
            FUNC2(tc, ec, level + 1);
            ec = ec->next;
        }
    }
}