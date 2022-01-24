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
struct field_t {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  bitstr_t ;

/* Variables and functions */
 int H323_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int TAB_SIZE ; 

__attribute__((used)) static int FUNC1(bitstr_t *bs, const struct field_t *f,
                      char *base, int level)
{
	FUNC0("%*.s%s\n", level * TAB_SIZE, " ", f->name);

	return H323_ERROR_NONE;
}