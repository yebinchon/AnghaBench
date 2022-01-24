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
struct expr {scalar_t__ hash; int /*<<< orphan*/  expr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2 (const void *exp1p, const void *exp2p)
{
  struct expr *exp1 = (struct expr *) exp1p;
  struct expr *exp2 = (struct expr *) exp2p;
  int equiv_p = FUNC0 (exp1->expr, exp2->expr, 0, true);
  
  FUNC1 (!equiv_p || exp1->hash == exp2->hash);
  return equiv_p;
}