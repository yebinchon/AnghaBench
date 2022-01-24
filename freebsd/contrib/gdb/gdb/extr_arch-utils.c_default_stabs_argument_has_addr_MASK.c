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
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct type*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct type*) ; 
 scalar_t__ TYPE_CODE_BITSTRING ; 
 scalar_t__ TYPE_CODE_SET ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int /*<<< orphan*/  processing_gcc_compilation ; 

int
FUNC4 (struct gdbarch *gdbarch, struct type *type)
{
  if (FUNC2 ()
      && FUNC1 (processing_gcc_compilation, type))
    {
      FUNC0 (type);

      return (FUNC3 (type) == TYPE_CODE_STRUCT
	      || FUNC3 (type) == TYPE_CODE_UNION
	      || FUNC3 (type) == TYPE_CODE_SET
	      || FUNC3 (type) == TYPE_CODE_BITSTRING);
    }

  return 0;
}