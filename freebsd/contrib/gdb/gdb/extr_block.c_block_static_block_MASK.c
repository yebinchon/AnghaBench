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
struct block {int dummy; } ;

/* Variables and functions */
 struct block const* FUNC0 (struct block const*) ; 

const struct block *
FUNC1 (const struct block *block)
{
  if (block == NULL || FUNC0 (block) == NULL)
    return NULL;

  while (FUNC0 (FUNC0 (block)) != NULL)
    block = FUNC0 (block);

  return block;
}