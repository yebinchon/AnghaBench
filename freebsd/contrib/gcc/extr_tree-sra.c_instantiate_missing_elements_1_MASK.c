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
struct sra_elt {int /*<<< orphan*/ * replacement; scalar_t__ is_scalar; } ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  FUNC0 (struct sra_elt*) ; 
 int /*<<< orphan*/  FUNC1 (struct sra_elt*) ; 
 struct sra_elt* FUNC2 (struct sra_elt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct sra_elt *elt, tree child, tree type)
{
  struct sra_elt *sub = FUNC2 (elt, child, type, INSERT);
  if (sub->is_scalar)
    {
      if (sub->replacement == NULL)
	FUNC0 (sub);
    }
  else
    FUNC1 (sub);
}