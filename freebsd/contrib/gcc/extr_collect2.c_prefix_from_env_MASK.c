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
struct path_prefix {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct path_prefix*) ; 

__attribute__((used)) static void
FUNC2 (const char *env, struct path_prefix *pprefix)
{
  const char *p;
  FUNC0 (p, env);

  if (p)
    FUNC1 (p, pprefix);
}