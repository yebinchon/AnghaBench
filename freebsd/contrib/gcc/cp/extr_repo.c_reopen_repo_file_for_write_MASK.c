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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_use_repository ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo_name ; 

__attribute__((used)) static FILE *
FUNC2 (void)
{
  FILE *repo_file = FUNC1 (repo_name, "w");

  if (repo_file == 0)
    {
      FUNC0 ("can't create repository information file %qs", repo_name);
      flag_use_repository = 0;
    }

  return repo_file;
}