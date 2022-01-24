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
struct gimplify_omp_ctx {int /*<<< orphan*/  privatized_types; int /*<<< orphan*/  variables; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gimplify_omp_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (struct gimplify_omp_ctx *c)
{
  FUNC2 (c->variables);
  FUNC1 (c->privatized_types);
  FUNC0 (c);
}