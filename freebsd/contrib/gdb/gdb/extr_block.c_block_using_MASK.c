#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct using_direct {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_2__ {struct using_direct* using; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct block const*) ; 
 struct block* FUNC1 (struct block const*) ; 

struct using_direct *
FUNC2 (const struct block *block)
{
  const struct block *static_block = FUNC1 (block);

  if (static_block == NULL
      || FUNC0 (static_block) == NULL)
    return NULL;
  else
    return FUNC0 (static_block)->using;
}