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
struct regset {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 struct regset const fpregset ; 
 struct regset const gregset ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static const struct regset *
FUNC1 (struct gdbarch *gdbarch,
				    const char *sect_name, size_t sect_size)
{
  if (FUNC0 (sect_name, ".reg") == 0)
    return (&gregset);
  if (FUNC0 (sect_name, ".reg2") == 0)
    return (&fpregset);
  return (NULL);
}