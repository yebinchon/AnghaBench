#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int line; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ expanded_location ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC5 (void)
{
  expanded_location xloc
    = FUNC4 (FUNC1 (current_function_decl));
  unsigned chksum = xloc.line;

  chksum = FUNC3 (chksum, xloc.file);
  chksum = FUNC3
    (chksum, FUNC2 (FUNC0 (current_function_decl)));

  return chksum;
}