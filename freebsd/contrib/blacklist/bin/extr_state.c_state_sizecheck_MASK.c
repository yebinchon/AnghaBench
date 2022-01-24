#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct conf {int dummy; } ;
struct TYPE_3__ {int size; } ;
typedef  TYPE_1__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC2(const DBT *t)
{
	if (sizeof(struct conf) == t->size)
		return 0;
	FUNC0)(LOG_ERR, "Key size mismatch %zu != %zu", sizeof(struct conf),
	    t->size);
	return -1;
}