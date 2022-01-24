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
typedef  scalar_t__ tree ;
struct TYPE_2__ {char* (* strip_name_encoding ) (char const*) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char const*) ; 
 char* FUNC6 (char const*) ; 
 TYPE_1__ targetm ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 

void
FUNC8 (FILE *file, const char *name)
{
  const char *real_name;
  tree id;

  real_name = targetm.strip_name_encoding (name);

  id = FUNC5 (real_name);
  if (id)
    {
      tree id_orig = id;

      FUNC4 (id);
      FUNC7 (&id);
      if (id != id_orig)
	name = FUNC0 (id);
      FUNC3 (! FUNC1 (id));
    }

  FUNC2 (file, name);
}