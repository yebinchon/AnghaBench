#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct ivopts_data {int dummy; } ;
typedef  TYPE_1__* edge ;
struct TYPE_4__ {int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ivopts_data*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct ivopts_data *data, edge exit)
{
  tree phi, def;

  for (phi = FUNC3 (exit->dest); phi; phi = FUNC1 (phi))
    {
      def = FUNC0 (phi, exit);
      FUNC2 (data, def);
    }
}