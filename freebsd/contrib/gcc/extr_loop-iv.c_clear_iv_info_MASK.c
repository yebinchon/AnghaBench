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
struct rtx_iv {int dummy; } ;
struct df_ref {int dummy; } ;

/* Variables and functions */
 struct df_ref* FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 struct rtx_iv* FUNC2 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC3 (struct df_ref*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bivs ; 
 int /*<<< orphan*/  df ; 
 int /*<<< orphan*/  FUNC4 (struct rtx_iv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (void)
{
  unsigned i, n_defs = FUNC1 (df);
  struct rtx_iv *iv;
  struct df_ref *def;

  for (i = 0; i < n_defs; i++)
    {
      def = FUNC0 (df, i);
      iv = FUNC2 (def);
      if (!iv)
	continue;
      FUNC4 (iv);
      FUNC3 (def, NULL);
    }

  FUNC5 (bivs);
}