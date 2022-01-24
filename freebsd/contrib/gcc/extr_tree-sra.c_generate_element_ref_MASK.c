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
struct sra_elt {int /*<<< orphan*/  element; struct sra_elt* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sra_elt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC1 (struct sra_elt *elt)
{
  if (elt->parent)
    return FUNC0 (elt, FUNC1 (elt->parent));
  else
    return elt->element;
}