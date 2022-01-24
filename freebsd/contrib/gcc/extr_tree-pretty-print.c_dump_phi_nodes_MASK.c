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
typedef  int /*<<< orphan*/  pretty_printer ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int TDF_VOPS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC8 (pretty_printer *buffer, basic_block bb, int indent, int flags)
{
  tree phi = FUNC5 (bb);
  if (!phi)
    return;

  for (; phi; phi = FUNC1 (phi))
    {
      if (FUNC4 (FUNC2 (phi)) || (flags & TDF_VOPS))
        {
          FUNC0 (indent);
          FUNC7 (buffer, "# ");
          FUNC3 (buffer, phi, indent, flags, false);
          FUNC6 (buffer);
        }
    }
}