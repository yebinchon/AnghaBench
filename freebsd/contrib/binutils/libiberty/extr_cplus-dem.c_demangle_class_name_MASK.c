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
struct work_stuff {int dummy; } ;
typedef  int /*<<< orphan*/  string ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (struct work_stuff*,char const**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3 (struct work_stuff *work, const char **mangled,
                     string *declp)
{
  int n;
  int success = 0;

  n = FUNC0 (mangled);
  if (n == -1)
    return 0;
  if ((int) FUNC2 (*mangled) >= n)
    {
      FUNC1 (work, mangled, n, declp);
      success = 1;
    }

  return (success);
}