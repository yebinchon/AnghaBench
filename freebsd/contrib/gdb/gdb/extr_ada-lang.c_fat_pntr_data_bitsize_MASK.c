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
 int TARGET_CHAR_BIT ; 
 int FUNC0 (struct type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct type* FUNC3 (struct type*) ; 

__attribute__((used)) static int
FUNC4 (struct type *type)
{
  type = FUNC3 (type);

  if (FUNC0 (type, 0) > 0)
    return FUNC0 (type, 0);
  else
    return TARGET_CHAR_BIT * FUNC2 (FUNC1 (type, 0));
}