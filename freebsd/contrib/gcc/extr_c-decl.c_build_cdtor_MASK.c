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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_INIT_PRIORITY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (int method_type, tree cdtors)
{
  tree body = 0;

  if (!cdtors)
    return;

  for (; cdtors; cdtors = FUNC0 (cdtors))
    FUNC2 (FUNC3 (FUNC1 (cdtors), 0),
			      &body);

  FUNC4 (method_type, body, DEFAULT_INIT_PRIORITY);
}