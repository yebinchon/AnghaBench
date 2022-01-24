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
struct gdbarch_tdep {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct gdbarch_tdep* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gdbarch_tdep*) ; 

__attribute__((used)) static int
FUNC3 (int gcc_p, struct type *type)
{
  struct gdbarch_tdep *tdep = FUNC1 (current_gdbarch);
  return (FUNC0 (type) > 2 * FUNC2 (tdep));
}