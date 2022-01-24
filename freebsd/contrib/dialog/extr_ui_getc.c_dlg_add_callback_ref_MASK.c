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
struct TYPE_4__ {int /*<<< orphan*/  freeback; struct TYPE_4__** caller; } ;
typedef  int /*<<< orphan*/  DIALOG_FREEBACK ;
typedef  TYPE_1__ DIALOG_CALLBACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(DIALOG_CALLBACK ** p, DIALOG_FREEBACK freeback)
{
    (*p)->caller = p;
    (*p)->freeback = freeback;
    FUNC0(*p);
}