#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tomoyo_io_buffer {int read_eof; } ;
struct TYPE_4__ {TYPE_1__* domainname; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tomoyo_io_buffer*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tomoyo_io_buffer *head)
{
	if (!head->read_eof) {
		/*
		 * tomoyo_domain()->domainname != NULL
		 * because every process belongs to a domain and
		 * the domain's name cannot be NULL.
		 */
		FUNC1(head, "%s", FUNC0()->domainname->name);
		head->read_eof = true;
	}
	return 0;
}