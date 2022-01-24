#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {int need_abi_warning; int /*<<< orphan*/  entity; } ;
struct TYPE_3__ {int /*<<< orphan*/  stack; } ;

/* Variables and functions */
 TYPE_2__ G ; 
 TYPE_1__* ident_hash ; 
 int /*<<< orphan*/ * mangle_obstack ; 
 int /*<<< orphan*/  name_base ; 
 int /*<<< orphan*/  name_obstack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2 (const tree entity, const bool ident_p)
{
  G.entity = entity;
  G.need_abi_warning = false;
  if (!ident_p)
    {
      FUNC1 (&name_obstack, name_base);
      mangle_obstack = &name_obstack;
      name_base = FUNC0 (&name_obstack, 0);
    }
  else
    mangle_obstack = &ident_hash->stack;
}