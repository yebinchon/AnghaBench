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
struct demangle_component {int dummy; } ;
struct d_print_info {int dummy; } ;
typedef  int /*<<< orphan*/  demangle_callbackref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,struct demangle_component const*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct d_print_info*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct d_print_info*) ; 

int
FUNC4 (int options,
                               const struct demangle_component *dc,
                               demangle_callbackref callback, void *opaque)
{
  struct d_print_info dpi;

  FUNC2 (&dpi, options, callback, opaque);

  FUNC0 (&dpi, dc);

  FUNC1 (&dpi);

  return ! FUNC3 (&dpi);
}