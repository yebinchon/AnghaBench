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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 struct type* FUNC1 (struct type*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct type*) ; 
 int FUNC3 (struct type*) ; 
 int FUNC4 (struct type*) ; 

__attribute__((used)) static int
FUNC5 (struct type *type)
{
  int n;
  int count;

  FUNC0 (type);
  if (FUNC2 (type) == NULL)
    return 0;
  count = FUNC3 (type);

  for (n = 0; n < FUNC4 (type); n++)
    count += FUNC5 (FUNC1 (type, n));

  return count;
}