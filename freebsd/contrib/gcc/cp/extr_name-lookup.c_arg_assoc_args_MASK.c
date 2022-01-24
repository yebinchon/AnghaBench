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
struct arg_lookup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct arg_lookup*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (struct arg_lookup *k, tree args)
{
  for (; args; args = FUNC0 (args))
    if (FUNC2 (k, FUNC1 (args)))
      return true;
  return false;
}