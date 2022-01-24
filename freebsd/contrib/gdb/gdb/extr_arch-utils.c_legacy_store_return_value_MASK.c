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
struct regcache {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 struct regcache* current_regcache ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 

void
FUNC5 (struct type *type, struct regcache *regcache,
			   const void *buf)
{
  bfd_byte *b = FUNC2 (FUNC1 (type));
  FUNC3 (regcache == current_regcache);
  FUNC4 (b, buf, FUNC1 (type));
  FUNC0 (type, b);
}