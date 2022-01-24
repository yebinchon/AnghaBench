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
struct map_symbol_def {int /*<<< orphan*/  entry; struct map_symbol_def* next; } ;
struct fat_user_section_struct {struct map_symbol_def* map_symbol_def_head; scalar_t__* map_symbol_def_tail; } ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 struct fat_user_section_struct* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (asection *sec)
{
  struct fat_user_section_struct *ud = FUNC0 (sec);
  struct map_symbol_def *def;

  if (!ud)
    return;

  *ud->map_symbol_def_tail = 0;
  for (def = ud->map_symbol_def_head; def; def = def->next)
    FUNC1 (def->entry, sec);
}