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
struct gdbarch {int dummy; } ;
typedef  enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;

/* Variables and functions */
 int FUNC0 (struct gdbarch*,struct type*,struct regcache*,void*,void const*,int) ; 

enum return_value_convention
FUNC1 (struct gdbarch *gdbarch,
				  struct type *valtype,
				  struct regcache *regcache,
				  void *readbuf, const void *writebuf)
{
  return FUNC0 (gdbarch, valtype, regcache, readbuf,
				   writebuf, 1);
}