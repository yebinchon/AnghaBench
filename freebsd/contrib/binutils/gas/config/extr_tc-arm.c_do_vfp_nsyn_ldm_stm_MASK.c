#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int instruction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ inst ; 

__attribute__((used)) static void
FUNC1 (int is_dbmode)
{
  int is_ldm = (inst.instruction & (1 << 20)) != 0;
  if (is_ldm)
    {
      if (is_dbmode)
        FUNC0 ("fldmdbs");
      else
        FUNC0 ("fldmias");
    }
  else
    {
      if (is_dbmode)
        FUNC0 ("fstmdbs");
      else
        FUNC0 ("fstmias");
    }
}