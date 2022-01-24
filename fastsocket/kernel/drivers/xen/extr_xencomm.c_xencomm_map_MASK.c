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
struct xencomm_handle {int dummy; } ;
struct xencomm_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (void*,unsigned long,struct xencomm_desc**,int /*<<< orphan*/ ) ; 
 struct xencomm_handle* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 struct xencomm_handle* FUNC3 (struct xencomm_desc*) ; 

struct xencomm_handle *FUNC4(void *ptr, unsigned long bytes)
{
	int rc;
	struct xencomm_desc *desc;

	if (FUNC2((unsigned long)ptr))
		return FUNC1(ptr);

	rc = FUNC0(ptr, bytes, &desc, GFP_KERNEL);

	if (rc || desc == NULL)
		return NULL;

	return FUNC3(desc);
}