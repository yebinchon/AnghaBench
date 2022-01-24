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
typedef  int /*<<< orphan*/  tree ;
struct named_label_entry {int /*<<< orphan*/  label_decl; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_INSERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**) ; 
 void** FUNC1 (int /*<<< orphan*/ ,struct named_label_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  named_labels ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (tree label, tree old_value)
{
  struct named_label_entry dummy;
  void **slot;

  FUNC2 (label, old_value);

  dummy.label_decl = label;
  slot = FUNC1 (named_labels, &dummy, NO_INSERT);
  FUNC0 (named_labels, slot);
}