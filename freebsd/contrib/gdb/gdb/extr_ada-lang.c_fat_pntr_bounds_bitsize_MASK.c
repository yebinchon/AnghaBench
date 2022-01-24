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

/* Variables and functions */
 int FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct type* FUNC4 (struct type*) ; 

__attribute__((used)) static int
FUNC5 (struct type *type)
{
  type = FUNC4 (type);

  if (FUNC0 (type, 1) > 0)
    return FUNC0 (type, 1);
  else
    return 8 * FUNC2 (FUNC3 (FUNC1 (type, 1)));
}