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
struct sra_elt {int n_uses; int n_copies; struct sra_elt* sibling; struct sra_elt* groups; struct sra_elt* children; } ;

/* Variables and functions */
 int /*<<< orphan*/  dump_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sra_elt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void
FUNC2 (struct sra_elt *elt)
{
  struct sra_elt *c;

  FUNC0 (dump_file, elt);
  FUNC1 (dump_file, ": n_uses=%u n_copies=%u\n", elt->n_uses, elt->n_copies);

  for (c = elt->children; c ; c = c->sibling)
    FUNC2 (c);

  for (c = elt->groups; c ; c = c->sibling)
    FUNC2 (c);
}