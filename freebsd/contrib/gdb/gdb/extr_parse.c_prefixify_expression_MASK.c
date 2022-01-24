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
struct expression {int nelts; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct expression*,struct expression*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct expression*,struct expression*,int,int) ; 

__attribute__((used)) static void
FUNC4 (struct expression *expr)
{
  int len =
  sizeof (struct expression) + FUNC0 (expr->nelts);
  struct expression *temp;
  int inpos = expr->nelts, outpos = 0;

  temp = (struct expression *) FUNC1 (len);

  /* Copy the original expression into temp.  */
  FUNC2 (temp, expr, len);

  FUNC3 (temp, expr, inpos, outpos);
}