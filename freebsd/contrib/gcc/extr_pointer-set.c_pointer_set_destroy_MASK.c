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
struct pointer_set_t {int /*<<< orphan*/  slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pointer_set_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2 (struct pointer_set_t *pset)
{
  FUNC1 (pset->slots);
  FUNC0 (pset);
}