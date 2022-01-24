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
struct fdt_reserve_entry {void* size; void* address; } ;
struct data {int dummy; } ;
typedef  int /*<<< orphan*/  bere ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 struct data FUNC1 (struct data,struct fdt_reserve_entry*,int) ; 

struct data FUNC2(struct data d, const struct fdt_reserve_entry *re)
{
	struct fdt_reserve_entry bere;

	bere.address = FUNC0(re->address);
	bere.size = FUNC0(re->size);

	return FUNC1(d, &bere, sizeof(bere));
}