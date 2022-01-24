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
struct bfd_section {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 struct block* FUNC0 (int /*<<< orphan*/ ,struct bfd_section*) ; 
 struct symbol* FUNC1 (struct block*) ; 

struct symbol *
FUNC2 (CORE_ADDR pc, struct bfd_section *section)
{
  struct block *b = FUNC0 (pc, section);
  if (b == 0)
    return 0;
  return FUNC1 (b);
}