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
struct pex_obj {int dummy; } ;

/* Variables and functions */
 struct pex_obj* FUNC0 (char const*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct pex_obj*) ; 

__attribute__((used)) static void
FUNC2 (const char *prog, char **argv)
{
  struct pex_obj *pex;

  pex = FUNC0 (prog, argv, NULL, NULL);
  FUNC1 (prog, pex);
}