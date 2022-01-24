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
typedef  int /*<<< orphan*/  uint8_t ;
struct carlfw_list_entry {int dummy; } ;
struct carlfw {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct carlfw_list_entry*) ; 
 struct carlfw_list_entry* FUNC1 (struct carlfw*,int /*<<< orphan*/  const*,unsigned int const,int /*<<< orphan*/  const) ; 

void *FUNC2(struct carlfw *fw,
		       const uint8_t descid[4],
		       const unsigned int len,
		       const uint8_t compatible_revision)
{
	struct carlfw_list_entry *tmp;

	tmp = FUNC1(fw, descid, len, compatible_revision);

	return tmp ? FUNC0(tmp) : NULL;
}