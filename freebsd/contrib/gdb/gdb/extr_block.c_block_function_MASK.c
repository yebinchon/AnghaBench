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
struct symbol {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 struct symbol* FUNC0 (struct block const*) ; 
 struct block* FUNC1 (struct block const*) ; 

struct symbol *
FUNC2 (const struct block *bl)
{
  while (FUNC0 (bl) == 0 && FUNC1 (bl) != 0)
    bl = FUNC1 (bl);

  return FUNC0 (bl);
}