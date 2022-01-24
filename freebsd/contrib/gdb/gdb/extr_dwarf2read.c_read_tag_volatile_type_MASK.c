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
struct dwarf2_cu {int dummy; } ;
struct die_info {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct type*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct type *base_type;

  if (die->type)
    {
      return;
    }

  base_type = FUNC2 (die, cu);
  die->type = FUNC3 (FUNC0 (base_type), 1,
                             FUNC1 (base_type), base_type, 0);
}