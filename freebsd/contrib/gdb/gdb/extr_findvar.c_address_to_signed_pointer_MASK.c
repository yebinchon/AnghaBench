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
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (struct type *type, void *buf, CORE_ADDR addr)
{
  FUNC1 (buf, FUNC0 (type), addr);
}