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
struct mem_region {int enabled_p; struct mem_region* next; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct mem_region* mem_region_chain ; 
 int /*<<< orphan*/  target_dcache ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  char *p = args;
  char *p1;
  int num;
  struct mem_region *m;

  FUNC1 (target_dcache);

  if (p == 0)
    {
      for (m = mem_region_chain; m; m = m->next)
	m->enabled_p = 1;
    }
  else
    while (*p)
      {
	p1 = p;
	while (*p1 >= '0' && *p1 <= '9')
	  p1++;
	if (*p1 && *p1 != ' ' && *p1 != '\t')
	  FUNC2 ("Arguments must be memory region numbers.");

	num = FUNC0 (p);
	FUNC3 (num);

	p = p1;
	while (*p == ' ' || *p == '\t')
	  p++;
      }
}