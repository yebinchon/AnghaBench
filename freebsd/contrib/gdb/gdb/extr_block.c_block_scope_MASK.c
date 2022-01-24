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
struct block {int dummy; } ;
struct TYPE_2__ {char const* scope; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct block const*) ; 
 struct block* FUNC1 (struct block const*) ; 

const char *
FUNC2 (const struct block *block)
{
  for (; block != NULL; block = FUNC1 (block))
    {
      if (FUNC0 (block) != NULL
	  && FUNC0 (block)->scope != NULL)
	return FUNC0 (block)->scope;
    }

  return "";
}