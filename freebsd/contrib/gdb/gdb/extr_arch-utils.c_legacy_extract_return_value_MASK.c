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
 int /*<<< orphan*/  FUNC0 (struct type*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct regcache*) ; 

void
FUNC2 (struct type *type, struct regcache *regcache,
			     void *valbuf)
{
  char *registers = FUNC1 (regcache);
  bfd_byte *buf = valbuf;
  FUNC0 (type, registers, buf); /* OK */
}